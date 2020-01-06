module "default_label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.3.3"
  namespace  = "${var.namespace}"
  stage      = "${var.stage}"
  name       = "${var.name}"
  delimiter  = "${var.delimiter}"
  attributes = "${var.attributes}"
  tags       = "${var.tags}"
}

resource "aws_s3_bucket" "default" {
  bucket        = "${module.default_label.id}"
  acl           = "${var.acl}"
  region        = "${var.region}"
  force_destroy = "${var.force_destroy}"
  policy        = "${var.policy}"

  versioning {
    enabled = "${var.versioning_enabled}"
  }

  lifecycle_rule {
    id      = "${module.default_label.id}"
    enabled = "${var.lifecycle_rule_enabled}"

    prefix = "${var.prefix}"
    tags   = "${module.default_label.tags}"

#    noncurrent_version_expiration {
#      days = "${var.noncurrent_version_expiration_days}"
#    }

#    noncurrent_version_transition {
#      days          = "${var.noncurrent_version_transition_days}"
#      storage_class = "GLACIER"
#    }

    transition {
      days          = "${var.standard_transition_days}"
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = "${var.glacier_transition_days}"
      storage_class = "GLACIER"
    }

    expiration {
      days = "${var.expiration_days}"
    }
  }

  # https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html
  # https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#enable-default-server-side-encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "${var.sse_algorithm}"
        kms_master_key_id = "${var.kms_master_key_id}"
      }
    }
  }

  tags = "${module.default_label.tags}"
}

resource "aws_s3_bucket_notification" "default_notification" {
  count       = "${var.notifications_enabled}"
  bucket      = "${aws_s3_bucket.default.id}"
  queue {
    queue_arn = "${var.queue_arn}"
    events    = ["s3:ObjectCreated:*","s3:ObjectRemoved:*"]
  }
}