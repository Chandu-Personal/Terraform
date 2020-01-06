output "zone_id" {
  value       = "${aws_route53_zone.main.zone_id}"
  description = "The hosted zone id"
}

output "name" {
    value   = "${var.name}"
}

output "name_servers" {
    value   = "${aws_route53_zone.main.name_servers}"
}