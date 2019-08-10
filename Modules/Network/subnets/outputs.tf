output "private_subnet_id" {
  value = "${aws_subnet.private_subnet.*.id}"
}

output "private_route_table_id" {
  value = "${aws_route_table.private_route_table.*.id}"
}

output "private_rt_association_id" {
  value = "${aws_route_table_association.private_rt_association.*.id}"
}

output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.*.id}"
}

output "public_route_table_id" {
  value = "${aws_route_table.public_route_table.*.id}"
}

output "public_rt_association_id" {
  value = "${aws_route_table_association.public_rt_association.*.id}"
}
