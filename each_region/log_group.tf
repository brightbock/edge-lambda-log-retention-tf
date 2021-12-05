resource "aws_cloudwatch_log_group" "log_group" {
  count = (var.destroy ? 0 : 1)
  provider          = aws.each_region
  name              = var.region_log_group_name
  retention_in_days = var.retention_in_days
  tags              = var.common_tags
}

