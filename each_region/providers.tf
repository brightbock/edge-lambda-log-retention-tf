provider "aws" {
  alias                  = "each_region"
  region                 = var.aws_region
  skip_region_validation = var.aws_region == "ap-northeast-3" ? true : false
}
