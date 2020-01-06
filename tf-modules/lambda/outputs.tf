output "arn" {
  description = "The arn of the Lambda function"
  value       = "${aws_lambda_function.function.arn}"
}

output "invoke_arn" {
  description = "The invocation arn of this lambda function"
  value       = "${aws_lambda_function.function.invoke_arn}"
}

output "invoke_policy_arn" {
  description = "The arn of the invocation policy for this Lambda function"
  value       = "${aws_iam_policy.invoke_function.arn}"
}

output "name" {
  description = "The name of the Lambda function"
  value       = "${aws_lambda_function.function.function_name}"
}

output "qualified_arn" {
  description = "The qualified arn of the Lambda function"
  value       = "${aws_lambda_function.function.qualified_arn}"
}

output "qualified_invoke_arn" {
  description = "The qualified invocation arn of the lambda function"
  value       = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.function.qualified_arn}/invocations"
}

output "aws_cloudwatch_event_rule_arn" {
  description = "The ARN of the CloudWatch event rule"
  value       = "${join("", aws_cloudwatch_event_rule.this.*.arn)}"
}