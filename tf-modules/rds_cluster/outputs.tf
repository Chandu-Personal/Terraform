output "rds_cluster_id" {
  value = "${aws_rds_cluster.aurora.id}"
}

output "writer_endpoint" {
  value = "${aws_rds_cluster.aurora.endpoint}"
}

output "reader_endpoint" {
  value = "${aws_rds_cluster.aurora.reader_endpoint}"
}

output "security_group_id"{
  value = "${var.vpc_security_group_ids}"
}
