output "launch_configuration_id" {
  value = "${aws_launch_configuration.lc.*.id}"
}
