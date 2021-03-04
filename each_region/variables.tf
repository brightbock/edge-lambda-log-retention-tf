variable "region_log_group_name" {
}

variable "common_tags" {
  default = {
  }
}

variable "aws_region" {
}

variable "retention_in_days" {
  validation {
    condition     = contains(["1", "3", "5", "7", "14", "30", "60", "90", "120", "150", "180", "365", "400", "545", "731", "1827", "3653"], var.retention_in_days)
    error_message = "Variable `retention_in_days` must be one of: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653."
  }
}
