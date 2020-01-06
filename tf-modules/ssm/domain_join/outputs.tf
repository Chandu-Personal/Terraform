output "created_date" {
    value   = "${aws_ssm_document.join_domain.created_date}"
}

output "description" {
    value   = "${aws_ssm_document.join_domain.description}"
}

output "schema_version" {
    value   = "${aws_ssm_document.join_domain.schema_version}"
}

output "default_version" {
    value   = "${aws_ssm_document.join_domain.default_version}"
}

output "hash" {
    value   = "${aws_ssm_document.join_domain.hash}"
}

output "hash_type" {
    value   = "${aws_ssm_document.join_domain.hash_type}"
}

output "latest_version" {
    value   = "${aws_ssm_document.join_domain.latest_version}"
}

output "owner" {
    value   = "${aws_ssm_document.join_domain.owner}"
}

output "status" {
    value   = "${aws_ssm_document.join_domain.status}"
}

output "parameter" {
    value   = "${aws_ssm_document.join_domain.parameter}"
}

output "platform_types" {
    value   = "${aws_ssm_document.join_domain.platform_types}"
}