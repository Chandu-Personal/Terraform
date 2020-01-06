# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${element(concat(aws_vpc.this.*.id, list("")), 0)}"
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = "${element(concat(aws_vpc.this.*.cidr_block, list("")), 0)}"
}

output "secondary_cidr" {
  description = "The secondary CIDR block of the VPC"
  value       = "${var.secondary_cidr}"
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = "${element(concat(aws_vpc.this.*.default_security_group_id, list("")), 0)}"
}

output "default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = "${element(concat(aws_vpc.this.*.default_network_acl_id, list("")), 0)}"
}

output "default_route_table_id" {
  description = "The ID of the default route table"
  value       = "${element(concat(aws_vpc.this.*.default_route_table_id, list("")), 0)}"
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = "${element(concat(aws_vpc.this.*.instance_tenancy, list("")), 0)}"
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = "${element(concat(aws_vpc.this.*.enable_dns_support, list("")), 0)}"
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = "${element(concat(aws_vpc.this.*.enable_dns_hostnames, list("")), 0)}"
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = "${element(concat(aws_vpc.this.*.main_route_table_id, list("")), 0)}"
}


# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${aws_subnet.private.*.id}"]
}

output "private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = ["${aws_subnet.private.*.cidr_block}"]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = ["${aws_subnet.public.*.id}"]
}

output "public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = ["${aws_subnet.public.*.cidr_block}"]
}

output "data_subnets" {
  description = "List of IDs of data subnets"
  value       = ["${aws_subnet.data.*.id}"]
}

output "data_subnets_cidr_blocks" {
  description = "List of cidr_blocks of data subnets"
  value       = ["${aws_subnet.data.*.cidr_block}"]
}

output "data_subnet_group" {
  description = "ID of data subnet group"
  value       = "${element(concat(aws_db_subnet_group.data.*.id, list("")), 0)}"
}

output "services_subnets" {
  description = "List of IDs of services subnets"
  value       = ["${aws_subnet.services.*.id}"]
}

output "services_subnets_cidr_blocks" {
  description = "List of cidr_blocks of services subnets"
  value       = ["${aws_subnet.services.*.cidr_block}"]
}

output "ecs_subnets" {
  description = "List of IDs of ecs subnets"
  value       = ["${aws_subnet.ecs.*.id}"]
}

output "ecs_subnets_cidr_blocks" {
  description = "List of cidr_blocks of ecs subnets"
  value       = ["${aws_subnet.ecs.*.cidr_block}"]
}

output "dynamic_services_subnets" {
  description = "List of IDs of dynamic_services subnets"
  value       = ["${aws_subnet.dynamic_services.*.id}"]
}

output "dynamic_services_subnets_cidr_blocks" {
  description = "List of cidr_blocks of dynamic_services subnets"
  value       = ["${aws_subnet.dynamic_services.*.cidr_block}"]
}

output "infrastructure_subnets" {
  description = "List of IDs of infrastructure subnets"
  value       = ["${aws_subnet.infrastructure.*.id}"]
}

output "infrastructure_subnets_cidr_blocks" {
  description = "List of cidr_blocks of infrastructure subnets"
  value       = ["${aws_subnet.infrastructure.*.cidr_block}"]
}

# Route tables
output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = ["${aws_route_table.public.*.id}"]
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = ["${aws_route_table.private.*.id}"]
}

output "data_route_table_ids" {
  description = "List of IDs of data route tables"
  value       = ["${coalescelist(aws_route_table.data.*.id, aws_route_table.private.*.id)}"]
}

output "services_route_table_ids" {
  description = "List of IDs of services route tables"
  value       = ["${coalescelist(aws_route_table.services.*.id, aws_route_table.private.*.id)}"]
}

output "ecs_route_table_ids" {
  description = "List of IDs of ecs route tables"
  value       = ["${coalescelist(aws_route_table.ecs.*.id, aws_route_table.private.*.id)}"]
}

output "dynamic_services_route_table_ids" {
  description = "List of IDs of dynamic_services route tables"
  value       = ["${coalescelist(aws_route_table.dynamic_services.*.id, aws_route_table.private.*.id)}"]
}

output "infrastructure_route_table_ids" {
  description = "List of IDs of infrastructure route tables"
  value       = ["${coalescelist(aws_route_table.infrastructure.*.id, aws_route_table.private.*.id)}"]
}

# Nat gateway
output "nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = ["${aws_eip.nat.*.id}"]
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = ["${aws_eip.nat.*.public_ip}"]
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = ["${aws_nat_gateway.this.*.id}"]
}

# Internet Gateway
output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = "${element(concat(aws_internet_gateway.this.*.id, list("")), 0)}"
}

# VPC Endpoints
output "vpc_endpoint_s3_id" {
  description = "The ID of VPC endpoint for S3"
  value       = "${element(concat(aws_vpc_endpoint.s3.*.id, list("")), 0)}"
}

output "vpc_endpoint_s3_pl_id" {
  description = "The prefix list for the S3 VPC endpoint."
  value       = "${element(concat(aws_vpc_endpoint.s3.*.prefix_list_id, list("")), 0)}"
}

/*output "vpc_endpoint_dynamodb_id" {
  description = "The ID of VPC endpoint for DynamoDB"
  value       = "${element(concat(aws_vpc_endpoint.dynamodb.*.id, list("")), 0)}"
}
*/
# VPN Gateway
output "vgw_id" {
  description = "The ID of the VPN Gateway"
  value       = "${element(concat(aws_vpn_gateway.this.*.id, aws_vpn_gateway_attachment.this.*.vpn_gateway_id, list("")), 0)}"
}

/*output "vpc_endpoint_dynamodb_pl_id" {
  description = "The prefix list for the DynamoDB VPC endpoint."
  value       = "${element(concat(aws_vpc_endpoint.dynamodb.*.prefix_list_id, list("")), 0)}"
}
*/
# Default VPC
output "default_vpc_id" {
  description = "The ID of the VPC"
  value       = "${element(concat(aws_default_vpc.this.*.id, list("")), 0)}"
}

output "default_vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = "${element(concat(aws_default_vpc.this.*.cidr_block, list("")), 0)}"
}

output "default_vpc_default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = "${element(concat(aws_default_vpc.this.*.default_security_group_id, list("")), 0)}"
}

output "default_vpc_default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = "${element(concat(aws_default_vpc.this.*.default_network_acl_id, list("")), 0)}"
}

output "default_vpc_default_route_table_id" {
  description = "The ID of the default route table"
  value       = "${element(concat(aws_default_vpc.this.*.default_route_table_id, list("")), 0)}"
}

output "default_vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = "${element(concat(aws_default_vpc.this.*.instance_tenancy, list("")), 0)}"
}

output "default_vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = "${element(concat(aws_default_vpc.this.*.enable_dns_support, list("")), 0)}"
}

output "default_vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = "${element(concat(aws_default_vpc.this.*.enable_dns_hostnames, list("")), 0)}"
}

//output "default_vpc_enable_classiclink" {
//  description = "Whether or not the VPC has Classiclink enabled"
//  value       = "${element(concat(aws_default_vpc.this.*.enable_classiclink, list("")), 0)}"
//}

output "default_vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = "${element(concat(aws_default_vpc.this.*.main_route_table_id, list("")), 0)}"
}

//output "default_vpc_ipv6_association_id" {
//  description = "The association ID for the IPv6 CIDR block"
//  value       = "${element(concat(aws_default_vpc.this.*.ipv6_association_id, list("")), 0)}"
//}
//
//output "default_vpc_ipv6_cidr_block" {
//  description = "The IPv6 CIDR block"
//  value       = "${element(concat(aws_default_vpc.this.*.ipv6_cidr_block, list("")), 0)}"
//}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

data "aws_region" "current" {}

output "region" {
  value = "${data.aws_region.current.name}"
}