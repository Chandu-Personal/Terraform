variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = "string"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = "string"
}

variable "name" {
  description = "Name  (e.g. `app` or `db`)"
  type        = "string"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
}

variable "acl" {
  description = "(Optional) The canned ACL to apply. We recommend log-delivery-write for compatibility with AWS services"
  default     = "log-delivery-write"
}

variable "policy" {
  description = "A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy."
  default     = ""
}

variable "prefix" {
  description = "(Optional) Key prefix. Used to manage object lifecycle events."
  default     = ""
}

variable "region" {
  description = "(Optional) If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee."
  default     = ""
}

variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  default     = "false"
}

variable "lifecycle_rule_enabled" {
  description = "(Optional) enable lifecycle events on this bucket"
  default     = "true"
}

variable "versioning_enabled" {
  description = "(Optional) A state of versioning. Versioning is a means of keeping multiple variants of an object in the same bucket."
  default     = "false"
}

variable "noncurrent_version_expiration_days" {
  description = "(Optional) Specifies when noncurrent object versions expire."
  default     = ""
}

variable "noncurrent_version_transition_days" {
  description = "(Optional) Specifies when noncurrent object versions transitions"
  default     = ""
}

variable "standard_transition_days" {
  description = "Number of days to persist in the standard storage tier before moving to the infrequent access tier"
  default     = "30"
}

variable "glacier_transition_days" {
  description = "Number of days after which to move the data to the glacier storage tier"
  default     = "90"
}

variable "expiration_days" {
  description = "Number of days after which to expunge the objects"
  default     = "730"
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  default     = "AES256"
}

variable "kms_master_key_id" {
  description = "The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms"
  default     = ""
}

variable "notifications_enabled" {
  description = "Whether or not to enable event notifications"
  default     = 0
}

variable "queue_arn" {
  description = "The queue where notifications need to be sent"
  default     = ""
}