#!/bin/bash

REGIONS=(
ap-northeast-1
ap-northeast-2
ap-northeast-3
ap-south-1
ap-southeast-1
ap-southeast-2
ca-central-1
eu-central-1
eu-north-1
eu-west-1
eu-west-2
eu-west-3
sa-east-1
us-east-1
us-east-2
us-west-1
us-west-2
)

FILE="./cloudwatch_logs_per_region.tf"

read -r -d '' TEMPLATE <<-"END_OF_TEMPLATE"

# Region: __REGION__
module "each_region-__REGION__" {
  source                = "./each_region"
  aws_region            = "__REGION__"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
  retention_in_days     = var.retention_in_days
}
END_OF_TEMPLATE

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




