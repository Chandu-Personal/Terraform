provider "aws" {
  alias = "dst"
}

data "aws_caller_identity" "peer" {
  provider = "aws.dst"
}

data "aws_region" "peer" {
  provider = "aws.dst"
}

########################
# Initiate the request #
########################
resource "aws_vpc_peering_connection" "this" {
  vpc_id        = "${var.this_vpc_id}"
  peer_vpc_id   = "${var.peer_vpc_id}"
  peer_owner_id = "${data.aws_caller_identity.peer.account_id}"
  peer_region   = "${data.aws_region.peer.id}"
  auto_accept   = false
  tags = "${merge(var.tags, map("Name", format("%s-peering-requester", var.name)))}"  
}

######################
# Accept the request #
######################
resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = "aws.dst"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.this.id}"
  auto_accept               = "${var.auto_accept_peering}"
  tags = "${merge(var.tags, map("Name", format("%s-peering-accepter", var.name)))}"  
}

########################
# Routes for requester #
########################
resource "aws_route" "route_tables" {
  count                     = "${length(var.this_route_table_ids)}"
  route_table_id            = "${element(var.this_route_table_ids, count.index)}"
  destination_cidr_block    = "${var.peer_cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.this.id}"
  depends_on                = ["aws_vpc_peering_connection.this"]
}

########################
# Routes for accepter  #
########################
resource "aws_route" "peer_route_tables" {
  provider                  = "aws.dst"
  count                     = "${length(var.peer_route_table_ids)}"
  route_table_id            = "${element(var.peer_route_table_ids, count.index)}"
  destination_cidr_block    = "${var.this_cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.this.id}"
  depends_on                = ["aws_vpc_peering_connection.this"]
}

########################
# Additional CIDR Routes for accepter  #
########################
resource "aws_route" "peer_route_tables_secondary_cidr" {
  provider                  = "aws.dst"
  count                     = "${var.peer_secondary_cidr ? length(var.peer_route_table_ids) : 0}"
  route_table_id            = "${element(var.peer_route_table_ids, count.index)}"
  destination_cidr_block    = "${var.secondary_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.this.id}"
  depends_on                = ["aws_vpc_peering_connection.this"]
}

########################
# Additional CIDR Routes for requestor  #
########################
resource "aws_route" "requestor_route_tables_secondary_cidr" {
  provider                  = "aws.dst"
  count                     = "${var.acceptor_secondary_cidr ? length(var.this_route_table_ids) : 0}"
  route_table_id            = "${element(var.this_route_table_ids, count.index)}"
  destination_cidr_block    = "${var.acceptor_secondary_cidr_ip}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.this.id}"
  depends_on                = ["aws_vpc_peering_connection.this"]
}
