resource "aws_launch_configuration" "lc" {
  count = "${length(var.lc_data)}"
  name   = "${lookup(var.lc_data[count.index],"name")}"
  image_id      = "${lookup(var.lc_data[count.index],"image_id")}"
  instance_type = "${lookup(var.lc_data[count.index],"instance_type")}"
  user_data = "${file(var.file)}"
  associate_public_ip_address = "${lookup(var.lc_data[count.index],"associate_public_ip_address")}"
  key_name = "QA"
  security_groups = ["${var.lc_security_groups}"]

}