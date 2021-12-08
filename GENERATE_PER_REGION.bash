#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

FILE="./cloudwatch_logs_per_region.tf"

REGIONS=( $(
  aws ec2 describe-regions \
    --filters 'Name=opt-in-status,Values=opt-in-not-required,opted-in' \
    --no-all-regions \
    --query 'Regions[].RegionName' \
    --output text \
  | tr '\t' '\n' | sort -u
) )

TEMPLATE="$( cat <<-"END_OF_TEMPLATE"
# Region: __REGION__
provider "aws" {
  alias = "__REGION__"
  region = "__REGION__"
  skip_region_validation = var.skip_region_validation
}
module "each_region-__REGION__" {
  source                = "./each_region"
  providers = {
    aws = aws.__REGION__
  }
  log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  tags           = var.tags
  retention_in_days     = var.retention_in_days
}

END_OF_TEMPLATE
)"

if [ ! -f "${FILE}" ]; then
  echo "Can not find file: ${FILE}" 1>&2
  exit 1
fi

cat > "${FILE}" <<END_OF_HEADER

#######
# This file is dynamically generated.
# Please update and execute "$0" to make changes
#######

END_OF_HEADER

for REGION in "${REGIONS[@]}" ; do
  printf "%s\n\n" "${TEMPLATE}" | sed "s|__REGION__|${REGION}|g" >> "${FILE}"
done

echo "## END OF FILE ##" >> "${FILE}"

terraform fmt "${FILE}"




