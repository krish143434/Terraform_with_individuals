variable "autoscaling_data" {
  type = "list"
}

variable "autoscaling_subnets" {
  type = "list"
}

variable "launch_configuration" {
  type = "string"
}

variable "load_balancers" {
  type = "list"
}

variable "target_group_arns" {
  type = "list"
}


variable "environment" {
  type = "string"
}
