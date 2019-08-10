resource "aws_lb" "load_balancer" {
  count = "${length(var.lb_data)}"
  name               = "${lookup(var.lb_data[count.index],"name")}"
  internal           = false
  load_balancer_type = "${lookup(var.lb_data[count.index],"load_balancer_type")}"
  security_groups    = "${var.lb_security_groups}"
  subnets            = "${var.lb_subnets}"
  tags = {
    Name = "${lookup(var.lb_data[count.index],"name")}"
    Environment = "${var.environment}"
    Terraform = "True"
    }
}

resource "aws_lb_listener" "listener" {
  count = "${length(var.lb_data)}"
  load_balancer_arn = "${element(aws_lb.load_balancer.*.arn,count.index)}"
  port              = "${lookup(var.lb_data[count.index],"listener_port")}"
  protocol          = "${lookup(var.lb_data[count.index],"listener_protocol")}"

  default_action {
    type             = "forward"
    target_group_arn = "${var.target_group_arn}"
  }
}