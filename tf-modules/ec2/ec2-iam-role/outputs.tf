output "arn" {
  description = "The ARN of IAM Role"
  value       = "${aws_iam_role.this.arn}"
}

output "arn_name" {
  description = "The name of IAM Role"
  value       = "${aws_iam_role.this.name}"
}

output "unique_id" {
  description = "The ARN Unique ID of IAM Role"
  value       = "${aws_iam_role.this.unique_id}"
}

output "name" {
  description = "The Instance profile Name"
  value       = "${aws_iam_instance_profile.this.name}"
}