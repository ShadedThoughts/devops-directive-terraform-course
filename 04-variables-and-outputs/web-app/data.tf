data "aws_vpc" "lab_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "lab_public_subnet" {
  id = var.subnet_id
}

data "aws_subnet" "lab_public_subnet_2" {
  id = var.subnet2_id
}

data "aws_security_group" "lab_sg_ec2" {
  id = var.security_group_id
}

data "aws_security_group" "lab_sg_lb" {
  id = var.aws_lb_sg_id
}