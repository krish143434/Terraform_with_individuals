resource "aws_autoscaling_group" "auto_scaling" {
  count = "${length(var.autoscaling_data)}"
  name                      = "${lookup(var.autoscaling_data[count.index],"name")}"
  desired_capacity          = "${lookup(var.autoscaling_data[count.index],"desired_capacity")}"
  vpc_zone_identifier       = "${var.autoscaling_subnets}" #private subnets 
  max_size                  = "${lookup(var.autoscaling_data[count.index],"max_size")}"
  min_size                  = "${lookup(var.autoscaling_data[count.index],"min_size")}"
  load_balancers = "${var.load_balancers}" #websvr lb can be atted to autoassign autoscaled instances to LB
  target_group_arns = "${var.target_group_arns}"
  launch_configuration      = "${var.launch_configuration}"
  tags = [
      {
      key                 = "Name"
      value               = "${lookup(var.autoscaling_data[count.index],"name")}"
      propagate_at_launch = true
      },
      {
      key                 = "QA"
      value               = "True"
      propagate_at_launch = true
      },
      {
      key                 = "Environment"
      value               = "${var.environment}"
      propagate_at_launch = true
      }
    ]
}