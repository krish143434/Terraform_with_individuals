resource "aws_instance" "SVR" {
  count = "${length(var.instance_data)}"
  ami                    = "${lookup(var.instance_data[count.index],"ami")}"
  instance_type          = "${lookup(var.instance_data[count.index],"instance_type")}"
  vpc_security_group_ids = ["${element(var.security_group,count.index)}"]
  subnet_id              = "${element(var.subnet,count.index)}"
  associate_public_ip_address = "${lookup(var.instance_data[count.index],"associate_public_ip_address")}"
  user_data = "${file(var.file)}"
  key_name = "QA"
  tags = {
    Name = "${lookup(var.instance_data[count.index],"name")}"
    Environment = "${var.environment}"
    Terraform = "True"
    }
}
