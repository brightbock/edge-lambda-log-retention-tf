provider "aws" {
  alias  = "each_region"
  region = var.aws_region
  ## There can be delays between new regions coming online, and the AWS Go SDK
  ## being updated, and then being incorporated in to a new Terraform version
  ## In such cases, disabling validation may allow us to use the region with
  ## existing terraform versions:
  # skip_region_validation = var.aws_region == "ap-northeast-3" ? true : false
}
