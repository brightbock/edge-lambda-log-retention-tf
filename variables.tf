variable "skip_region_validation" {
  type    = bool
  default = false
}

variable "function_name" {
}

variable "tags" {
  default = {
  }
}

variable "retention_in_days" {
  default = "90"
}
