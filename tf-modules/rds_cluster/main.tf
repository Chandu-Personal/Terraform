locals {
  option_group_name             = "${coalesce(var.option_group_name, module.db_option_group.this_db_option_group_id)}"
  enable_create_db_option_group = "${var.option_group_name == "" && var.engine != "aurora-postgresql" ? var.create_db_option_group : 0}"
}

resource "aws_rds_cluster" "aurora" {
  cluster_identifier              = "${var.cluster_identifier}"
  availability_zones              = ["${var.azs}"]
  database_name                   = "${var.database_name}"
  master_username                 = "${var.master_username}"
  master_password                 = "${var.master_password}"
  engine                          = "${var.engine}"
  backup_retention_period         = "${var.backup_retention_period}"
  preferred_backup_window         = "${var.preferred_backup_window}"
  vpc_security_group_ids          = ["${var.vpc_security_group_ids}"]
  storage_encrypted               = "${var.storage_encrypted}"
  snapshot_identifier             = "${var.snapshot_identifier}"
  kms_key_id                      = "${var.kms_key_id}"
  apply_immediately               = "${var.apply_immediately}"
  db_subnet_group_name            = "${aws_db_subnet_group.aurora_subnet_group.id}"
  db_cluster_parameter_group_name = "${var.custom_cluster_param_group_name == "" ? aws_rds_cluster_parameter_group.aurora_cluster_parameter_group.id : var.custom_cluster_param_group_name}"
  final_snapshot_identifier       = "final-snapshot-${var.cluster_identifier}"          # Useful in dev
 
  skip_final_snapshot                 = true # Useful in dev - defaults to false
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"
  tags                            = "${merge(var.tags, map("Name" ,"${var.cluster_identifier}"))}"
  lifecycle {
    create_before_destroy = false # https://www.terraform.io/docs/configuration/resources.html#prevent_destroy
  }
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count                   = "${var.cluster_size}"
  identifier              = "${var.cluster_identifier}-${count.index}"
  engine                  = "${var.engine}"
  cluster_identifier      = "${aws_rds_cluster.aurora.id}"
  instance_class          = "${var.instance_class}"
  publicly_accessible     = "${var.publicly_accessible}"
  db_subnet_group_name    = "${aws_db_subnet_group.aurora_subnet_group.id}"
  db_parameter_group_name = "${var.custom_db_param_group_name == "" ? aws_db_parameter_group.aurora_parameter_group.id : var.custom_db_param_group_name}"
  apply_immediately       = "${var.apply_immediately}"
  monitoring_role_arn     = "${aws_iam_role.aurora_instance_role.arn}"
  auto_minor_version_upgrade  = "${var.auto_minor_version_upgrade}"
  monitoring_interval     = "5"

  tags                    = "${merge(var.tags, map("Name" , "${var.cluster_identifier}-${count.index}"))}"

}

resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "${var.cluster_identifier}-subnet-group"
  subnet_ids = ["${var.subnets}"]

  tags {
    Name = "${var.cluster_identifier}-subnetgroup"
  }
}

resource "aws_db_parameter_group" "aurora_parameter_group" {
  name        = "${var.cluster_identifier}-parameter-group"
  family      = "${var.family}"
  description = "Terraform-managed parameter group for ${var.cluster_identifier}-parameter-group"

  parameter = ["${var.db_parameters}"]

  tags {
    Name = "${var.cluster_identifier}-parameter-group"
  }
}

resource "aws_rds_cluster_parameter_group" "aurora_cluster_parameter_group" {
  name        = "${var.cluster_identifier}-cluster-parameter-group"
  family      = "${var.family}"                                                                              
  description = "Terraform-managed cluster parameter group for ${var.cluster_identifier}-cluster-parameter-group"

  parameter = ["${var.cluster_parameters}"]

  tags {
    Name = "${var.cluster_identifier}-cluster-parameter-group"
  }
}

module "db_option_group" {
  source = "./db_option_group"

  create                   = "${local.enable_create_db_option_group}"
  cluster_identifier       = "${var.cluster_identifier}"
  name_prefix              = "${var.cluster_identifier}-"
  option_group_description = "${var.option_group_description}"
  engine_name              = "${var.engine}"
  major_engine_version     = "${var.major_engine_version}"

  options = ["${var.options}"]

  tags = "${var.tags}"
}

resource "aws_iam_role" "aurora_instance_role" {
  name               = "${var.cluster_identifier}-iam-role"
  assume_role_policy = "${file("${path.module}/policy/assume_role_rds_monitoring.json")}"
}

resource "aws_iam_role_policy_attachment" "aurora_policy_rds_monitoring" {
  role       = "${aws_iam_role.aurora_instance_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}
