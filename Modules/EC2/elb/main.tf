resource "aws_elb" "elb" {
  count = "${length(var.elb_data)}"
  name               = "${lookup(var.elb_data[count.index],"name")}"
  subnets = "${var.elb_subnets}" #public subnets needed 
  security_groups = "${var.elb_security_groups}" #need to create new SG for ELB
  instances = "${var.elb_instances}" #optional, can attach this ELB to Autoscalinggroup for adding instances
  tags = {
        Name = "${lookup(var.elb_data[count.index],"name")}"
        Environment = "${var.environment}"
        Terraform = "True"
    }
    listener {
        instance_port     = "${lookup(var.elb_data[count.index],"instance_port")}"
        instance_protocol = "${lookup(var.elb_data[count.index],"instance_protocol")}"
        lb_port           = "${lookup(var.elb_data[count.index],"lb_port")}"
        lb_protocol       = "${lookup(var.elb_data[count.index],"lb_protocol")}"
    }
    health_check {
        healthy_threshold   = "${lookup(var.elb_data[count.index],"healthy_threshold")}"
        unhealthy_threshold = "${lookup(var.elb_data[count.index],"unhealthy_threshold")}"
        timeout             = "${lookup(var.elb_data[count.index],"timeout")}"
        target              = "${lookup(var.elb_data[count.index],"target")}"
        interval            = "${lookup(var.elb_data[count.index],"interval")}"
    }
        
}