output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "private_subnet_id" {
  value = "${module.subnets.private_subnet_id}"
}

output "public_subnet_id" {
  value = "${module.subnets.public_subnet_id}"
}

output "private_route_table_id" {
  value = "${module.subnets.private_route_table_id}"
}

output "public_route_table_id" {
  value = "${module.subnets.public_route_table_id}"
}

output "private_rt_association_id" {
  value = "${module.subnets.private_rt_association_id}"
}

output "public_rt_association_id" {
  value = "${module.subnets.public_rt_association_id}"
}

output "igw_id" {
  value = "${module.igw.igw_id}"
}

output "eip_id" {
  value = "${module.nat_gw.eip_id}"
}

output "nat_gw_id" {
  value = "${module.nat_gw.nat_gw_id}"
}

output "security_group_id" {
  value = "${module.security_group.security_group_id}"
}

output "instance_id" {
  value = "${module.instance.instance_id}"
}

output "target_group_id" {
  value = "${module.target_groups.target_group_id}"
}

output "load_balancer_id" {
  value = "${module.load_balancer.load_balancer_id}"
}

output "elb_id" {
  value = "${module.elb.elb_id}"
}

output "launch_configuration_id" {
  value = "${module.launch_configuration.launch_configuration_id}"
}

output "autoscaling_group_id" {
  value = "${module.autoscaling_group.autoscaling_group_id}"
}