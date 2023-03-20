resource "aws_security_group" "this" {
  name        = "${var.app_name}-sg"
  description = "Security Group for test ${var.app_name}"
  vpc_id      = aws_vpc.main.id
}



resource "aws_security_group_rule" "access_from_internet" {
  security_group_id = aws_security_group.this.id
  type              = "ingress"
  count             = length(var.allow_ports)
  from_port         = element(var.allow_ports, count.index)
  to_port           = element(var.allow_ports, count.index)
  description       = "Allow connecting from internet to port ${element(var.allow_ports, count.index)}"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "access_from_vpc" {
  security_group_id = aws_security_group.this.id
  description       = "Allow connecting from VPC"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  cidr_blocks       = ["192.168.0.0/16"]
}

resource "aws_security_group_rule" "access_to_anywhere" {
  security_group_id = aws_security_group.this.id
  description       = "Allow outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  cidr_blocks       = ["0.0.0.0/0"]
}