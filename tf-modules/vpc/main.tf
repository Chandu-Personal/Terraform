terraform {
  required_version = ">= 0.10.3" # introduction of Local Values configuration language feature
}

locals {
  max_subnet_length = "${max(length(var.private_subnets), length(var.ecs_subnets), length(var.data_subnets), length(var.services_subnets),length(var.dynamic_services_subnets),length(var.infrastructure_subnets))}"
  nat_gateway_count = "${var.single_nat_gateway ? 1 : (var.one_nat_gateway_per_az ? (local.max_subnet_length >0 ? length(var.azs) : 0) : local.max_subnet_length)}"
}

/*module "global_static_vars_module" {
    source = "../../modules/global_static_vars"
}*/

######
# VPC
######
resource "aws_vpc" "this" {
  count = "${var.create_vpc ? 1 : 0}"

  cidr_block                       = "${var.cidr}"
  instance_tenancy                 = "${var.instance_tenancy}"
  enable_dns_hostnames             = "${var.enable_dns_hostnames}"
  enable_dns_support               = "${var.enable_dns_support}"
  assign_generated_ipv6_cidr_block = "${var.assign_generated_ipv6_cidr_block}"

  tags = "${merge(map("Name", format("%s", var.name),"Resource_Role", "VPC"), var.vpc_tags, var.tags)}"
}

###################
# Additional VPC CIDR Block
###################
resource "aws_vpc_ipv4_cidr_block_association" "vpc_secondary_cidr" {
  count           = "${var.enable_secondary_cidr ? 1 : 0}"
  vpc_id          = "${aws_vpc.this.id}"
  cidr_block = "${var.secondary_cidr}"
}


###################
# VPC Flow Logs
###################

/*data "aws_iam_role" "vpc_flowlog_role" {
    name = "VPCFlowlogsRole"
}

#flow log to cloudwatch
resource "aws_flow_log" "vpc_flow_log" {
  count = "${var.create_vpc_flowlogs ? 1 : 0}"
  log_group_name = "VPC-Flowlogs"
  iam_role_arn   = "${data.aws_iam_role.vpc_flowlog_role.arn}"
  vpc_id         = "${aws_vpc.this.id}"
  traffic_type   = "ALL"
}*/

#flowlog to S3
/*resource "aws_flow_log" "vpc_flowlog_s3" {
  log_destination      = "${module.global_static_vars_module.vpc_flow_bucket_arn}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = "${aws_vpc.this.id}"
}*/
###################
# DHCP Options Set
###################
resource "aws_vpc_dhcp_options" "this" {
  count = "${var.create_vpc && var.enable_dhcp_options ? 1 : 0}"

  domain_name          = "${var.dhcp_options_domain_name}"
  domain_name_servers  = ["${var.dhcp_options_domain_name_servers}"]
  ntp_servers          = ["${var.dhcp_options_ntp_servers}"]
  netbios_name_servers = ["${var.dhcp_options_netbios_name_servers}"]
  netbios_node_type    = "${var.dhcp_options_netbios_node_type}"

  tags = "${merge(map("Name", format("%s", var.name),"Resource_Role", "DHCP_Options"), var.dhcp_options_tags, var.tags)}"
}

###############################
# DHCP Options Set Association
###############################
resource "aws_vpc_dhcp_options_association" "this" {
  count = "${var.create_vpc && var.enable_dhcp_options ? 1 : 0}"

  vpc_id          = "${aws_vpc.this.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.this.id}"
}

###################
# Internet Gateway
###################
resource "aws_internet_gateway" "this" {
  count = "${var.create_vpc && length(var.public_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(map("Name", format("%s", var.name),"Resource_Role", "IGW"), var.igw_tags, var.tags)}"
}

################
# Publiс routes
################
resource "aws_route_table" "public" {
  count = "${var.create_vpc && length(var.public_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(map("Name", format("%s-public", var.name),"Resource_Role", "Route_Table"), var.public_route_table_tags, var.tags)}"
}

resource "aws_route" "public_internet_gateway" {
  count = "${var.create_vpc && length(var.public_subnets) > 0 ? 1 : 0}"

  route_table_id         = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.this.id}"

  timeouts {
    create = "5m"
  }
}

#################
# Private routes
# There are so many routing tables as the largest amount of subnets of each type (really?)
#################
resource "aws_route_table" "private" {
  count = "${var.create_vpc && local.max_subnet_length > 0 ? local.nat_gateway_count : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(map("Name", (var.single_nat_gateway ? "${var.name}-private" : format("%s-private-%s", var.name, element(var.azs, count.index))),"Resource_Role", "Route_Table"), var.private_route_table_tags, var.tags)}"

  lifecycle {
    # When attaching VPN gateways it is common to define aws_vpn_gateway_route_propagation
    # resources that manipulate the attributes of the routing table (typically for the private subnets)
    ignore_changes = ["propagating_vgws"]
  }
}

#################
# data routes
#################
resource "aws_route_table" "data" {
  count = "${var.create_vpc && var.create_data_subnet_route_table && length(var.data_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(var.tags, var.data_route_table_tags, map("Name", "${var.name}-data","Resource_Role", "Route_Table"))}"
}

#################
# services routes
#################
resource "aws_route_table" "services" {
  count = "${var.create_vpc && var.create_services_subnet_route_table && length(var.services_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(var.tags, var.services_route_table_tags, map("Name", "${var.name}-services","Resource_Role", "Route_Table"))}"
}

#################
# ecs routes
#################
resource "aws_route_table" "ecs" {
  count = "${var.create_vpc && var.create_ecs_subnet_route_table && length(var.ecs_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(var.tags, var.ecs_route_table_tags, map("Name", "${var.name}-ecs","Resource_Role", "Route_Table"))}"
}

#################
# dynamic_services routes
#################
resource "aws_route_table" "dynamic_services" {
  count = "${var.create_vpc && var.create_dynamic_services_subnet_route_table && length(var.dynamic_services_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(var.tags, var.dynamic_services_route_table_tags, map("Name", "${var.name}-dynamic_services","Resource_Role", "Route_Table"))}"
}

#################
# infrastructure routes
#################
resource "aws_route_table" "infrastructure" {
  count = "${var.create_vpc && var.create_infrastructure_subnet_route_table && length(var.infrastructure_subnets) > 0 ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(var.tags, var.infrastructure_route_table_tags, map("Name", "${var.name}-infrastructure","Resource_Role", "Route_Table"))}"
}

################
# Public subnet
################
resource "aws_subnet" "public" {
  count = "${var.create_vpc && length(var.public_subnets) > 0 && (!var.one_nat_gateway_per_az || length(var.public_subnets) >= length(var.azs)) ? length(var.public_subnets) : 0}"

  vpc_id                  = "${aws_vpc.this.id}"
  cidr_block              = "${var.public_subnets[count.index]}"
  availability_zone       = "${element(var.azs, count.index)}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"

  tags = "${
  merge(
    map("Name", format("%s-public-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Public","Resource_Role", "Subnet")
  )
  }"
}

#################
# Private subnet
#################
resource "aws_subnet" "private" {
  count = "${var.create_vpc && length(var.private_subnets) > 0 ? length(var.private_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.private_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${
  merge(
    map("Name", format("%s-private-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Private","Resource_Role", "Subnet")
  )
  }"
}

##################
# data subnet
##################
resource "aws_subnet" "data" {
  count = "${var.create_vpc && length(var.data_subnets) > 0 ? length(var.data_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.data_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${merge(map("Name", format("%s-db-%s", var.name, element(var.azs, count.index))), var.data_subnet_tags, var.tags)}"
}

resource "aws_db_subnet_group" "data" {
  count = "${var.create_vpc && length(var.data_subnets) > 0 && var.create_data_subnet_group ? 1 : 0}"

  name        = "${lower(var.name)}"
  description = "data subnet group for ${var.name}"
  subnet_ids  = ["${aws_subnet.data.*.id}"]

  tags = "${
  merge(
    map("Name", format("%s-data-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Data","Resource_Role", "Subnet")
  )
  }"
}

##################
# services subnet
##################
resource "aws_subnet" "services" {
  count = "${var.create_vpc && length(var.services_subnets) > 0 ? length(var.services_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.services_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${
  merge(
    map("Name", format("%s-services-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Services","Resource_Role", "Subnet")
  )
  }"
}


#####################
# ecs subnet
#####################
resource "aws_subnet" "ecs" {
  count = "${var.create_vpc && length(var.ecs_subnets) > 0 ? length(var.ecs_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.ecs_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${
  merge(
    map("Name", format("%s-ecs-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "ECS","Resource_Role", "Subnet")
  )
  }"
}


#####################
# dynamic_services subnet
#####################
resource "aws_subnet" "dynamic_services" {
  count = "${var.create_vpc && length(var.dynamic_services_subnets) > 0 ? length(var.dynamic_services_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.dynamic_services_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${
  merge(
    map("Name", format("%s-dynamicservices-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Dynamic Services","Resource_Role", "Subnet")
  )
  }"
}

#####################
# infrastructure subnet
#####################
resource "aws_subnet" "infrastructure" {
  count = "${var.create_vpc && length(var.infrastructure_subnets) > 0 ? length(var.infrastructure_subnets) : 0}"

  vpc_id            = "${aws_vpc.this.id}"
  cidr_block        = "${var.infrastructure_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = "${
  merge(
    map("Name", format("%s-infrastructure-%s", var.name, element(var.azs, count.index))
    ), 
    var.public_subnet_tags,
    var.tags,
    map("Tier", "Infrastructure","Resource_Role", "Subnet")
  )
  }"
}

##############
# NAT Gateway
##############
# Workaround for interpolation not being able to "short-circuit" the evaluation of the conditional branch that doesn't end up being used
# Source: https://github.com/hashicorp/terraform/issues/11566#issuecomment-289417805
#
# The logical expression would be
#
#    nat_gateway_ips = var.reuse_nat_ips ? var.external_nat_ip_ids : aws_eip.nat.*.id
#
# but then when count of aws_eip.nat.*.id is zero, this would throw a resource not found error on aws_eip.nat.*.id.
locals {
  nat_gateway_ips = "${split(",", (var.reuse_nat_ips ? join(",", var.external_nat_ip_ids) : join(",", aws_eip.nat.*.id)))}"
}

resource "aws_eip" "nat" {
  count = "${var.create_vpc && (var.enable_nat_gateway && !var.reuse_nat_ips) ? local.nat_gateway_count : 0}"

  vpc = true

  tags = "${merge(map("Name", format("%s-%s", var.name, element(var.azs, (var.single_nat_gateway ? 0 : count.index))),"Resource_Role", "EIP"), var.nat_eip_tags, var.tags)}"
}

resource "aws_nat_gateway" "this" {
  count = "${var.create_vpc && var.enable_nat_gateway ? local.nat_gateway_count : 0}"

  allocation_id = "${element(local.nat_gateway_ips, (var.single_nat_gateway ? 0 : count.index))}"
  subnet_id     = "${element(aws_subnet.public.*.id, (var.single_nat_gateway ? 0 : count.index))}"

  tags = "${merge(map("Name", format("%s-%s", var.name, element(var.azs, (var.single_nat_gateway ? 0 : count.index))),"Resource_Role", "NAT_Gateway"), var.nat_gateway_tags, var.tags)}"

  depends_on = ["aws_internet_gateway.this"]
}

resource "aws_route" "private_nat_gateway" {
  count = "${var.create_vpc && var.enable_nat_gateway ? local.nat_gateway_count : 0}"

  route_table_id         = "${element(aws_route_table.private.*.id, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.this.*.id, count.index)}"

  timeouts {
    create = "5m"
  }
}

######################
# VPC Endpoint for S3
######################
data "aws_vpc_endpoint_service" "s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint ? 1 : 0}"

  service = "s3"
}

resource "aws_vpc_endpoint" "s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint ? 1 : 0}"

  vpc_id       = "${aws_vpc.this.id}"
  service_name = "${data.aws_vpc_endpoint_service.s3.service_name}"
}

resource "aws_vpc_endpoint_route_table_association" "private_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint ? local.nat_gateway_count : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${element(aws_route_table.private.*.id, count.index)}"
}

resource "aws_vpc_endpoint_route_table_association" "data_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint  && var.create_data_subnet_route_table && length(var.data_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${element(aws_route_table.data.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "ecs_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint && var.create_ecs_subnet_route_table && length(var.ecs_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${element(aws_route_table.ecs.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "dynamic_services_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint && var.create_dynamic_services_subnet_route_table && length(var.dynamic_services_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${element(aws_route_table.dynamic_services.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "infrastructure_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint && var.create_infrastructure_subnet_route_table && length(var.infrastructure_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${element(aws_route_table.infrastructure.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "public_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint && length(var.public_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${aws_route_table.public.id}"
}

resource "aws_vpc_endpoint_route_table_association" "services_s3" {
  count = "${var.create_vpc && var.enable_s3_endpoint && var.create_services_subnet_route_table && length(var.services_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
  route_table_id  = "${aws_route_table.services.id}"
}

############################
# VPC Endpoint for DynamoDB
############################
/*data "aws_vpc_endpoint_service" "dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint ? 1 : 0}"

  service = "dynamodb"
}

resource "aws_vpc_endpoint" "dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint ? 1 : 0}"

  vpc_id       = "${aws_vpc.this.id}"
  service_name = "${data.aws_vpc_endpoint_service.dynamodb.service_name}"
}

resource "aws_vpc_endpoint_route_table_association" "private_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint ? local.nat_gateway_count : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.private.*.id, count.index)}"
}

resource "aws_vpc_endpoint_route_table_association" "ecs_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && var.create_ecs_subnet_route_table && length(var.ecs_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.ecs.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "services_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && var.create_services_subnet_route_table && length(var.services_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.services.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "dynamic_services_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && var.create_dynamic_services_subnet_route_table && length(var.dynamic_services_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.dynamic_services.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "infrastructure_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && var.create_infrastructure_subnet_route_table && length(var.infrastructure_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.infrastructure.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "data_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && var.create_data_subnet_route_table && length(var.data_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${element(aws_route_table.data.*.id, 0)}"
}

resource "aws_vpc_endpoint_route_table_association" "public_dynamodb" {
  count = "${var.create_vpc && var.enable_dynamodb_endpoint && length(var.public_subnets) > 0 ? 1 : 0}"

  vpc_endpoint_id = "${aws_vpc_endpoint.dynamodb.id}"
  route_table_id  = "${aws_route_table.public.id}"
}*/

##########################
# Route table association
##########################
resource "aws_route_table_association" "private" {
  count = "${var.create_vpc && length(var.private_subnets) > 0 ? length(var.private_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.private.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.private.*.id, (var.single_nat_gateway ? 0 : count.index))}"
}

resource "aws_route_table_association" "data" {
  count = "${var.create_vpc && length(var.data_subnets) > 0 ? length(var.data_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.data.*.id, count.index)}"
  route_table_id = "${element(coalescelist(aws_route_table.data.*.id, aws_route_table.private.*.id), (var.single_nat_gateway || var.create_data_subnet_route_table ? 0 : count.index))}"
}

resource "aws_route_table_association" "services" {
  count = "${var.create_vpc && length(var.services_subnets) > 0 ? length(var.services_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.services.*.id, count.index)}"
  route_table_id = "${element(coalescelist(aws_route_table.services.*.id, aws_route_table.private.*.id), (var.single_nat_gateway || var.create_services_subnet_route_table ? 0 : count.index))}"
}

resource "aws_route_table_association" "ecs" {
  count = "${var.create_vpc && length(var.ecs_subnets) > 0 ? length(var.ecs_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.ecs.*.id, count.index)}"
  route_table_id = "${element(coalescelist(aws_route_table.ecs.*.id, aws_route_table.private.*.id), (var.single_nat_gateway || var.create_ecs_subnet_route_table ? 0 : count.index))}"
}

resource "aws_route_table_association" "dynamic_services" {
  count = "${var.create_vpc && length(var.dynamic_services_subnets) > 0 ? length(var.dynamic_services_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.dynamic_services.*.id, count.index)}"
  route_table_id = "${element(coalescelist(aws_route_table.dynamic_services.*.id, aws_route_table.private.*.id), (var.single_nat_gateway || var.create_dynamic_services_subnet_route_table ? 0 : count.index))}"
}

resource "aws_route_table_association" "infrastructure" {
  count = "${var.create_vpc && length(var.infrastructure_subnets) > 0 ? length(var.infrastructure_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.infrastructure.*.id, count.index)}"
  route_table_id = "${element(coalescelist(aws_route_table.infrastructure.*.id, aws_route_table.private.*.id), (var.single_nat_gateway || var.create_infrastructure_subnet_route_table ? 0 : count.index))}"
}

resource "aws_route_table_association" "public" {
  count = "${var.create_vpc && length(var.public_subnets) > 0 ? length(var.public_subnets) : 0}"

  subnet_id      = "${element(aws_subnet.public.*.id, count.index)}"
  route_table_id = "${aws_route_table.public.id}"
}

##############
# VPN Gateway
##############
resource "aws_vpn_gateway" "this" {
  count = "${var.create_vpc && var.enable_vpn_gateway ? 1 : 0}"

  vpc_id = "${aws_vpc.this.id}"

  tags = "${merge(map("Name", format("%s", var.name),"Resource_Role", "VPN_Gateway"), var.vpn_gateway_tags, var.tags)}"
}

resource "aws_vpn_gateway_attachment" "this" {
  count = "${var.vpn_gateway_id != "" ? 1 : 0}"

  vpc_id         = "${aws_vpc.this.id}"
  vpn_gateway_id = "${var.vpn_gateway_id}"
}

resource "aws_vpn_gateway_route_propagation" "public" {
  count = "${var.create_vpc && var.propagate_public_route_tables_vgw && (var.enable_vpn_gateway || var.vpn_gateway_id != "") ? 1 : 0}"

  route_table_id = "${element(aws_route_table.public.*.id, count.index)}"
  vpn_gateway_id = "${element(concat(aws_vpn_gateway.this.*.id, aws_vpn_gateway_attachment.this.*.vpn_gateway_id), count.index)}"
}

resource "aws_vpn_gateway_route_propagation" "private" {
  count = "${var.create_vpc && var.propagate_private_route_tables_vgw && (var.enable_vpn_gateway || var.vpn_gateway_id != "") ? length(var.private_subnets) : 0}"

  route_table_id = "${element(aws_route_table.private.*.id, count.index)}"
  vpn_gateway_id = "${element(concat(aws_vpn_gateway.this.*.id, aws_vpn_gateway_attachment.this.*.vpn_gateway_id), count.index)}"
}

###########
# Defaults
###########
resource "aws_default_vpc" "this" {
  count = "${var.manage_default_vpc ? 1 : 0}"

  enable_dns_support   = "${var.default_vpc_enable_dns_support}"
  enable_dns_hostnames = "${var.default_vpc_enable_dns_hostnames}"
  enable_classiclink   = "${var.default_vpc_enable_classiclink}"

  tags = "${merge(map("Name", format("%s", var.default_vpc_name),"Resource_Role", "VPC"), var.default_vpc_tags, var.tags)}"
}