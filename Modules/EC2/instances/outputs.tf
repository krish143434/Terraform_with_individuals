output "instance_id" {
  value = "${aws_instance.SVR.*.id}"
}