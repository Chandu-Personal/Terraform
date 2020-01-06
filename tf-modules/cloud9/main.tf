#Cloud9 Instance


resource "aws_cloud9_environment_ec2" "this" {
    name            = "${var.name}"
    instance_type   = "${var.instance_type}"
    automatic_stop_time_minutes = "${var.stop_time}"
    description     = "${var.description}"
    owner_arn       = "${var.owner}"
    subnet_id       = "${var.subnet_id}"
}