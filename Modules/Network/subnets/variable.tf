variable "environment" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "igw" {
  type = "string"
}

variable "nat_gw_id" {
  type = "list"
}


variable "private_subnets" {
  type = "list"
}

variable "public_subnets" {
  type = "list"
}

variable "private_subnet" {
  type = "string"
}

variable "public_subnet" {
  type = "string"
}

variable "private_route_tables" {
  type = "list"
}

variable "public_route_tables" {
  type = "list"
}
