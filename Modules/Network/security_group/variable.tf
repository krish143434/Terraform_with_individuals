variable "sg_data" {
  type = "list"
}

variable "environment" {
  type = "string"
}

variable "security_group_rule" {
  type = "list"
}

variable "security_group_id" {
  type = "list"
}

variable "source_security_group_id" {
  type = "list"
}

variable "vpc_id" {
  type = "string"
}

variable "additional_security_group_rule" {
  type = "list"
}

variable "additional_security_group_id" {
  type = "string"
}