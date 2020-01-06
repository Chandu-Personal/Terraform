data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "this" {
  name                  = "${var.name}"
  assume_role_policy    = "${var.assume_role_policy == "" ? data.aws_iam_policy_document.this.json : var.assume_role_policy}"
  force_detach_policies = "${var.force_detach_policies}"
  path                  = "${var.path}"
  description           = "${var.description}"
}

resource "aws_iam_instance_profile" "this" {
  name       = "${format("%s-%s", var.name, "instance-profile")}"
  path       = "${var.path}"
  role       = "${aws_iam_role.this.name}"
  depends_on = ["aws_iam_role.this"]
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = "${length(var.policy_arn)}"
  role       = "${aws_iam_role.this.name}"
  policy_arn = "${var.policy_arn[count.index]}"
}