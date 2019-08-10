resource "aws_vpc" "vpc" {
    count = "${length(var.vpcs)}"
    cidr_block = "${lookup(var.vpcs[count.index],"cidr")}"
    enable_dns_hostnames = "${lookup(var.vpcs[count.index],"enable_dns_hostnames")}"
    enable_dns_support = "${lookup(var.vpcs[count.index],"enable_dns_support")}"
    tags = {
        Name = "${lookup(var.vpcs[count.index],"name")}"
        Environment = "${var.environment}"
        Terraform = "True"
    }
}