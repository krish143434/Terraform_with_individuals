output "autoscaling_group_id" {
  value = "${aws_autoscaling_group.auto_scaling.*.id}"
}
