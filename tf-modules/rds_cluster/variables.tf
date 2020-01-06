variable "env" {}

variable "cluster_identifier" {
  description = "The identifier of the resource"
}

variable "allowed_cidr" {
  type        = "list"
  default     = []
  description = "A list of Security Group ID's to allow access to."
}

variable "allowed_security_groups" {
  type        = "list"
  default     = []
  description = "A list of Security Group ID's to allow access to."
}

variable "azs" {
  description = "A list of Availability Zones in the Region"
  type        = "list"
  default     = ["us-east-1a","us-east-1b"]
}

variable "cluster_size" {
  description = "Number of cluster instances to create"
}

variable "db_port" {
  default = 3306
}

variable "instance_class" {
  description = "Instance class to use when creating RDS cluster"
  default = "db.t2.medium"
}

variable "publicly_accessible" {
  description = "Should the instance get a public IP address?"
  default = "false"
}

variable "option_group_name" {
  description = "Name of the DB option group to associate. Setting this automatically disables option_group creation"
  default     = ""
}

variable "create_db_option_group" {
  description = "Whether to create a database option group"
  default     = true
}

variable "subnets" {
  description = "Subnets to use in creating RDS subnet group (must already exist)"
  type        = "list"
}

variable "cluster_parameters" {
  description = "A list of cluster parameter maps to apply"
  type        = "list"
  default     = []
}

variable "custom_cluster_param_group_name" {
  description = "A provided cluster parameter group"
  default     = ""
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN. If storage_encrypted is set to true and kms_key_id is not specified the default KMS key created in your account will be used"
  default     = ""
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this database from a snapshot. This correlates to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05."
  default     = ""
}

variable "db_parameters" {
  description = "A list of db parameter maps to apply"
  type        = "list"
  default     = []
}

variable "custom_db_param_group_name" {
  description = "A provided db parameter group"
  default     = ""
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  default     = {}
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  default     = []
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}

# see aws_rds_cluster documentation for these variables
variable "database_name" { }
variable "master_username" { }
variable "master_password" { }

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = "30"
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created"
  default     = "01:00-03:00"
}
variable "storage_encrypted" { default = true }
variable "apply_immediately" { default = false }
variable "iam_database_authentication_enabled" { default = false }
variable "major_engine_version" { default = "5.6" }
variable "engine" { default = "aurora" }
variable "family" { default = "aurora5.6"}


## DB option group variables

variable "options" {
  type        = "list"
  description = "A list of Options to apply"
  default     = []
}

variable "option_group_description" {
  description = "The description of the option group"
  default     = ""
}

