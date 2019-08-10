output "load_balancer_id" {
  value = "${aws_lb.load_balancer.*.id}"
}
