variable "destroy" {
  type    = bool
  default = false
}

variable "function_name" {
}

variable "common_tags" {
  default = {
  }
}

variable "retention_in_days" {
  default = "90"
}
