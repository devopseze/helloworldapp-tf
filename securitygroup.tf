resource "aws_security_group" "ecs-securitygroup" {
  vpc_id = "${aws_vpc.main.id}"
  name = "ecs"
  description = "security group for ecs"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 5000
      to_port = 5000
      protocol = "tcp"
      security_groups = ["${aws_security_group.helloworldapp-elb-securitygroup.id}"]
  } 
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
  tags {
    Name = "ecs"
  }
}
resource "aws_security_group" "helloworldapp-elb-securitygroup" {
  vpc_id = "${aws_vpc.main.id}"
  name = "helloworldapp-elb"
  description = "security group for ecs"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 5000
      to_port = 5000
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
  tags {
    Name = "helloworldapp-elb"
  }
}
