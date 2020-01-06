resource "aws_route53_zone" "main" {
  name          = "${var.name}"
  vpc_id        = "${var.main_vpc}"
  vpc_region    = "${var.main_vpc_region}"
  comment       = "${var.description}"
  force_destroy = "${var.force_destroy}"
}

resource "aws_route53_zone_association" "secondary" {
  count   = "${length(var.secondary_vpcs)}"
  zone_id = "${aws_route53_zone.main.zone_id}"
  vpc_id  = "${var.secondary_vpcs[count.index]}"
}