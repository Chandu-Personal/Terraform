resource "aws_ami_copy" "encrypted_ami" {
  name              = "${var.name}"
  description       = "An encrypted root ami based off ${data.aws_ami.base_ami.id}"
  source_ami_id     = "${data.aws_ami.base_ami.id}"
  source_ami_region = "${var.region}"
  encrypted         = "true"

  tags {
    Name = "${var.name}"
    DeleteAfter = "${timeadd(timestamp(), "24h")}"
  }
}

data "aws_ami" "base_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["${var.source_ami_name}"]
  }
}