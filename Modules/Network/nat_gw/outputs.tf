output "eip_id" {
  value = "${aws_eip.eip.*.id}"
}

output "nat_gw_id" {
  value = "${aws_nat_gateway.nat_gw.*.id}"
}