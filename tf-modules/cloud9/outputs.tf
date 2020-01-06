#outputs
output "c9_id" {
    value   = "${aws_cloud9_environment_ec2.this.id}"
}

output "c9_arn" {
    value   = "${aws_cloud9_environment_ec2.this.arn}"
}

output  "c9_type" {
    value   = "${aws_cloud9_environment_ec2.this.type}"
}