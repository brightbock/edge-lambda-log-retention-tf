
#######
#
# This file is dynamically generated.
# Please update and execute "GENERATE_PER_REGION.bash" to make changes
#
# Refer: https://aws.amazon.com/cloudfront/features/ for a list of "Regional Edge Cache" regions
#
#######

# Region: ap-northeast-1
provider "aws" {
  alias                  = "ap-northeast-1"
  region                 = "ap-northeast-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-ap-northeast-1" {
  source = "./each_region"
  providers = {
    aws = aws.ap-northeast-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: ap-northeast-2
provider "aws" {
  alias                  = "ap-northeast-2"
  region                 = "ap-northeast-2"
  skip_region_validation = var.skip_region_validation
}
module "each_region-ap-northeast-2" {
  source = "./each_region"
  providers = {
    aws = aws.ap-northeast-2
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



## # Region: ap-northeast-3
## provider "aws" {
##   alias = "ap-northeast-3"
##   region = "ap-northeast-3"
##   skip_region_validation = var.skip_region_validation
## }
## module "each_region-ap-northeast-3" {
##   source                = "./each_region"
##   providers = {
##     aws = aws.ap-northeast-3
##   }
##   log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
##   tags           = var.tags
##   retention_in_days     = var.retention_in_days
## }
## 


# Region: ap-south-1
provider "aws" {
  alias                  = "ap-south-1"
  region                 = "ap-south-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-ap-south-1" {
  source = "./each_region"
  providers = {
    aws = aws.ap-south-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: ap-southeast-1
provider "aws" {
  alias                  = "ap-southeast-1"
  region                 = "ap-southeast-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-ap-southeast-1" {
  source = "./each_region"
  providers = {
    aws = aws.ap-southeast-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: ap-southeast-2
provider "aws" {
  alias                  = "ap-southeast-2"
  region                 = "ap-southeast-2"
  skip_region_validation = var.skip_region_validation
}
module "each_region-ap-southeast-2" {
  source = "./each_region"
  providers = {
    aws = aws.ap-southeast-2
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



## # Region: ca-central-1
## provider "aws" {
##   alias = "ca-central-1"
##   region = "ca-central-1"
##   skip_region_validation = var.skip_region_validation
## }
## module "each_region-ca-central-1" {
##   source                = "./each_region"
##   providers = {
##     aws = aws.ca-central-1
##   }
##   log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
##   tags           = var.tags
##   retention_in_days     = var.retention_in_days
## }
## 


# Region: eu-central-1
provider "aws" {
  alias                  = "eu-central-1"
  region                 = "eu-central-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-eu-central-1" {
  source = "./each_region"
  providers = {
    aws = aws.eu-central-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



## # Region: eu-north-1
## provider "aws" {
##   alias = "eu-north-1"
##   region = "eu-north-1"
##   skip_region_validation = var.skip_region_validation
## }
## module "each_region-eu-north-1" {
##   source                = "./each_region"
##   providers = {
##     aws = aws.eu-north-1
##   }
##   log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
##   tags           = var.tags
##   retention_in_days     = var.retention_in_days
## }
## 


# Region: eu-west-1
provider "aws" {
  alias                  = "eu-west-1"
  region                 = "eu-west-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-eu-west-1" {
  source = "./each_region"
  providers = {
    aws = aws.eu-west-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



## # Region: eu-west-2
## provider "aws" {
##   alias = "eu-west-2"
##   region = "eu-west-2"
##   skip_region_validation = var.skip_region_validation
## }
## module "each_region-eu-west-2" {
##   source                = "./each_region"
##   providers = {
##     aws = aws.eu-west-2
##   }
##   log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
##   tags           = var.tags
##   retention_in_days     = var.retention_in_days
## }
## 


## # Region: eu-west-3
## provider "aws" {
##   alias = "eu-west-3"
##   region = "eu-west-3"
##   skip_region_validation = var.skip_region_validation
## }
## module "each_region-eu-west-3" {
##   source                = "./each_region"
##   providers = {
##     aws = aws.eu-west-3
##   }
##   log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
##   tags           = var.tags
##   retention_in_days     = var.retention_in_days
## }
## 


# Region: sa-east-1
provider "aws" {
  alias                  = "sa-east-1"
  region                 = "sa-east-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-sa-east-1" {
  source = "./each_region"
  providers = {
    aws = aws.sa-east-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: us-east-1
provider "aws" {
  alias                  = "us-east-1"
  region                 = "us-east-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-us-east-1" {
  source = "./each_region"
  providers = {
    aws = aws.us-east-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: us-east-2
provider "aws" {
  alias                  = "us-east-2"
  region                 = "us-east-2"
  skip_region_validation = var.skip_region_validation
}
module "each_region-us-east-2" {
  source = "./each_region"
  providers = {
    aws = aws.us-east-2
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: us-west-1
provider "aws" {
  alias                  = "us-west-1"
  region                 = "us-west-1"
  skip_region_validation = var.skip_region_validation
}
module "each_region-us-west-1" {
  source = "./each_region"
  providers = {
    aws = aws.us-west-1
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



# Region: us-west-2
provider "aws" {
  alias                  = "us-west-2"
  region                 = "us-west-2"
  skip_region_validation = var.skip_region_validation
}
module "each_region-us-west-2" {
  source = "./each_region"
  providers = {
    aws = aws.us-west-2
  }
  log_group_name    = "/aws/lambda/us-east-1.${var.function_name}"
  tags              = var.tags
  retention_in_days = var.retention_in_days
}



## END OF FILE ##
