module "each_region-default" {
  destroy = var.destroy
  source                = "./each_region"
  aws_region            = "us-east-1"
  region_log_group_name = "/aws/lambda/${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

