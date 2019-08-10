resource "aws_lb_target_group" "target_group" {
count = "${length(var.tg_data)}"
  name        = "${lookup(var.tg_data[count.index],"name")}"
  port        = "${lookup(var.tg_data[count.index],"port")}"
  protocol    = "${lookup(var.tg_data[count.index],"protocol")}"
  target_type = "${lookup(var.tg_data[count.index],"target_type")}"
  vpc_id      = "${var.vpc_id}"
  tags = {
    Name = "${lookup(var.tg_data[count.index],"name")}"
    Environment = "${var.environment}"
    Terraform = "True" 
  }
  health_check {
    interval =  "${lookup(var.tg_data[count.index],"health_check_interval")}"
    port = "${lookup(var.tg_data[count.index],"health_check_port")}"
    protocol = "${lookup(var.tg_data[count.index],"health_check_protocol")}"
    healthy_threshold = "${lookup(var.tg_data[count.index],"healthy_threshold")}"
    unhealthy_threshold = "${lookup(var.tg_data[count.index],"unhealthy_threshold")}"
  }
}
