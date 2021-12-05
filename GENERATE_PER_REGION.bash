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
module "each_region-__REGION__" {
  destroy               = var.destroy
  source                = "./each_region"
  aws_region            = "__REGION__"
  region_log_group_name = "/aws/lambda/us-east-1.${var.function_name}"
  common_tags           = var.common_tags
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




