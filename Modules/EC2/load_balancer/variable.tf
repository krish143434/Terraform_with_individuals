variable "lb_data" {
  type = "list"
}

variable "lb_subnets" {
  type = "list"
}

variable "lb_security_groups" {
  type = "list"
}

variable "target_group_arn" {
  type = "string"
}

variable "environment" {
  type = "string"
}