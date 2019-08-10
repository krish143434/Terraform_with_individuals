resource "aws_eip" "eip" {
  vpc   = true
  count = "${length(var.nat_gw)}" 
}

resource "aws_nat_gateway" "nat_gw" {
  count = "${length(var.nat_gw)}"
  subnet_id     = "${element(var.subnet_association,count.index)}"
  allocation_id = "${element(aws_eip.eip.*.id,count.index)}"
  tags = {
    Terraformed = "True"
    Environment = "${var.environment}"
    availability_zone = "${lookup(var.nat_gw[count.index],"name")}"
    Name = "${lookup(var.public_subnets[count.index],"availability_zone")}"
  }
}
