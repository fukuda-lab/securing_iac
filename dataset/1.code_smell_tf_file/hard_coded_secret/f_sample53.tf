resource "aws_lambda_function" "this" {
  image_uri     = var.lambda_promtail_image
  function_name = var.name
  role          = aws_iam_role.this.arn
  kms_key_arn   = var.kms_key_arn

  timeout      = 60
  memory_size  = 128
  package_type = "Image"

  # From the Terraform AWS Lambda docs: If both subnet_ids and security_group_ids are empty then vpc_config is considered to be empty or unset.
  vpc_config {
    # Every subnet should be able to reach an EFS mount target in the same Availability Zone. Cross-AZ mounts are not permitted.
    subnet_ids         = var.lambda_vpc_subnets
    security_group_ids = var.lambda_vpc_security_groups
  }

  environment {
    variables = {
      WRITE_ADDRESS            = var.write_address
      USERNAME                 = var.username
      PASSWORD                 = var.password
      BEARER_TOKEN             = var.bearer_token
      KEEP_STREAM              = var.keep_stream
      BATCH_SIZE               = var.batch_size
      EXTRA_LABELS             = var.extra_labels
      DROP_LABELS              = var.drop_labels
      OMIT_EXTRA_LABELS_PREFIX = var.omit_extra_labels_prefix ? "true" : "false"
      TENANT_ID                = var.tenant_id
      SKIP_TLS_VERIFY          = var.skip_tls_verify
      PRINT_LOG_LINE           = var.print_log_line
    }
  }

  depends_on = [
    aws_iam_role_policy.lambda_s3,
    aws_iam_role_policy.lambda_kms,
    aws_iam_role_policy.lambda_kinesis,
    aws_iam_role_policy.lambda_cloudwatch,

    aws_iam_role_policy_attachment.lambda_vpc_execution,

    # Ensure function is created after, and destroyed before, the log-group
    # This prevents the log-group from being re-created by an invocation of the lambda-function
    aws_cloudwatch_log_group.this,
  ]
}
