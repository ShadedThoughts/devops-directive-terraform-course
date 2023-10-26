resource "aws_instance" "instance_1" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = data.aws_subnet.lab_public_subnet.id
  security_groups = [data.aws_security_group.lab_sg_ec2.id]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}

resource "aws_instance" "instance_2" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = data.aws_subnet.lab_public_subnet.id
  security_groups = [data.aws_security_group.lab_sg_ec2.id]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 2" > index.html
              python3 -m http.server 8080 &
              EOF
}
