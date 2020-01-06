variable "allow_self_invocation" {
  default     = false
  description = "If true, allows this Lambda function to invoke itself. Useful for recursive invocations"
  type        = "string"
}

variable "cloudwatch_rule_arns" {
  default     = []
  description = "The ARNs of the CloudWatch rule allowed to invoke the Lambda function"
  type        = "list"
}

variable "cloudwatch_rule_arns_count" {
  default     = 0
  description = "The number of ARNs included in the cloudwatch_rule_arns list"
  type        = "string"
}

variable "dead_letter_arn" {
  description = "The arn for the SNS topic that handles dead letters"
  type        = "string"
}

variable "environment_variables" {
  default     = {
    DEFAULT = "default"
  }
  description = "The map of environment variables to give to the Lambda function"
  type        = "map"
}

variable "handler" {
  description = "The handler for the lambda function"
  type        = "string"
}

variable "kms_key_arn" {
  description = "The arn of the KMS key used to encrypt the environment variables"
  type        = "string"
}

variable "memory_size" {
  default     = "128"
  description = "The memory allocation for the function"
  type        = "string"
}

variable "name" {
  description = "The name of the function"
  type        = "string"
}

variable "policy_arns" {
  default     = []
  description = "A list of additional policy arns to attach to the function's role"
  type        = "list"
}

variable "policy_arns_count" {
  default     = 0
  description = "The number of policy arns to attach"
  type        = "string"
}

variable "runtime" {
  description = "The runtime the function should use"
  type        = "string"
}

variable "filename" {
  description = "The name or path (local) that contains the function package"
  type        = "string"
}

variable "timeout" {
  default     = 3
  description = "The timeout to apply to the function"
  type        = "string"
}

variable "cron_expression" {
  default     = ""
  description = "cron expression for cloudwatch rule"
  type        = "string"
}

variable "create_cloudwatch_rule" {
  default     = 0
  description = "set to 1 and specify a cron_expression to create a cloudwatch rule"
}

variable "source_code_hash" {
  description = "source code hash to push code updates - ex. base64sha256(file(\"lambda_function_payload.zip\"))"
}

variable "custom_role_enabled" {
  description = "custom role boolean"
  default = false
}

variable "custom_role" {
  description = "custom role passed in from caller"
  default = ""
}

variable "tags" {
  description = "Tags to apply to the lambda"
  default     = {}
}