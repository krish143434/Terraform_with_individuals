variable "elb_data" {
  type = "list"
}

variable "elb_subnets" {
  type = "list"
}

variable "elb_instances" {
   type = "list"
}

variable "elb_security_groups" {
  type = "list"
}


variable "environment" {
  type = "string"
}