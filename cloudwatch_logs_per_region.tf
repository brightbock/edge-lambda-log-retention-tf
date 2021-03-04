
#######
# This file is dynamically generated.
# Please update and execute ".//GENERATE_PER_REGION.bash" to make changes
#######

# Region: ap-northeast-1
module "each_region-ap-northeast-1" {
  source                = "./each_region"
  aws_region            = "ap-northeast-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ap-northeast-2
module "each_region-ap-northeast-2" {
  source                = "./each_region"
  aws_region            = "ap-northeast-2"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ap-northeast-3
module "each_region-ap-northeast-3" {
  source                = "./each_region"
  aws_region            = "ap-northeast-3"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ap-south-1
module "each_region-ap-south-1" {
  source                = "./each_region"
  aws_region            = "ap-south-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ap-southeast-1
module "each_region-ap-southeast-1" {
  source                = "./each_region"
  aws_region            = "ap-southeast-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ap-southeast-2
module "each_region-ap-southeast-2" {
  source                = "./each_region"
  aws_region            = "ap-southeast-2"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: ca-central-1
module "each_region-ca-central-1" {
  source                = "./each_region"
  aws_region            = "ca-central-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: eu-central-1
module "each_region-eu-central-1" {
  source                = "./each_region"
  aws_region            = "eu-central-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: eu-north-1
module "each_region-eu-north-1" {
  source                = "./each_region"
  aws_region            = "eu-north-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: eu-west-1
module "each_region-eu-west-1" {
  source                = "./each_region"
  aws_region            = "eu-west-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: eu-west-2
module "each_region-eu-west-2" {
  source                = "./each_region"
  aws_region            = "eu-west-2"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: eu-west-3
module "each_region-eu-west-3" {
  source                = "./each_region"
  aws_region            = "eu-west-3"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: sa-east-1
module "each_region-sa-east-1" {
  source                = "./each_region"
  aws_region            = "sa-east-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: us-east-1
module "each_region-us-east-1" {
  source                = "./each_region"
  aws_region            = "us-east-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: us-east-2
module "each_region-us-east-2" {
  source                = "./each_region"
  aws_region            = "us-east-2"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: us-west-1
module "each_region-us-west-1" {
  source                = "./each_region"
  aws_region            = "us-west-1"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

# Region: us-west-2
module "each_region-us-west-2" {
  source                = "./each_region"
  aws_region            = "us-west-2"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}

## END OF FILE ##
