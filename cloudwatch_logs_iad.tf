module "each_region-iad" {
  source = "./each_region"
  providers = {
    aws = aws.us-east-1
  }
  log_group_name    = "/aws/lambda/${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}


