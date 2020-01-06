provider "aws" {
  alias = "sharedServices"
}

resource "aws_route53_record" "default" {
  provider  = "aws.sharedServices"
  count     = "${var.enabled == "true" ? 1 : 0}"
  zone_id   = "${var.zone_id}"
  name      = "${var.name}"
  type      = "${var.type}"
  ttl       = "${var.ttl}"
  records   = ["${var.records}"]
}