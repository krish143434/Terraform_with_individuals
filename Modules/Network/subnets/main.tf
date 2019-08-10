resource "aws_subnet" "private_subnet" {
  count = "${length(var.private_subnets)}"
  cidr_block = "${lookup(var.private_subnets[count.index],"cidr")}"
  vpc_id     = "${var.vpc_id}"
  availability_zone = "${lookup(var.private_subnets[count.index],"availability_zone")}"
  tags = {
    Terraformed = "True"
    Environment = "${var.environment}"
    Name = "${lookup(var.private_subnets[count.index],"name")}"
    Subnet = "${var.private_subnet}"
  }
}

resource "aws_route_table" "private_route_table" {
  count = "${length(var.private_route_tables)}"
  vpc_id     = "${var.vpc_id}"
  route{
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${element(var.nat_gw_id,count.index)}"
  }
  tags = {
   Terraformed = "True"
   Environment = "${var.environment}"
   Name = "${lookup(var.private_route_tables[count.index],"name")}"
   RouteTableType = "Private"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  count = "${length(var.private_route_tables)}"
  subnet_id     = "${element(aws_subnet.private_subnet.*.id,count.index)}"
  route_table_id = "${element(aws_route_table.private_route_table.*.id,count.index)}"
}

resource "aws_subnet" "public_subnet" {
  count = "${length(var.public_subnets)}"
  cidr_block = "${lookup(var.public_subnets[count.index],"cidr")}"
  vpc_id     = "${var.vpc_id}"
  availability_zone = "${lookup(var.public_subnets[count.index],"availability_zone")}"
  tags = {
    Terraformed = "True"
    Environment = "${var.environment}"
    Name = "${lookup(var.public_subnets[count.index],"name")}"
    Subnet = "${var.public_subnet}"
  }
}

resource "aws_route_table" "public_route_table" {
  count = "${length(var.public_route_tables)}"
  vpc_id     = "${var.vpc_id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.igw}"
  }
  tags = {
    Terraformed = "True"
    Environment = "${var.environment}"
    Name = "${lookup(var.public_route_tables[count.index],"name")}"
    RouteTableType = "Public"
  }
}

resource "aws_route_table_association" "public_rt_association" {
  count = "${length(var.public_subnets)}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id,count.index)}"
  route_table_id = "${element(aws_route_table.public_route_table.*.id,count.index)}"
}
