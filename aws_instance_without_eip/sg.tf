resource "aws_security_group" "this" {
  name        = "${var.instance_name}-sg"
  description = "Security Group for instance"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "access_tcp_from_internet" {
  security_group_id = aws_security_group.this.id
  type              = "ingress"
  count             = length(var.allow_tcp_ports)
  from_port         = element(var.allow_tcp_ports, count.index)
  to_port           = element(var.allow_tcp_ports, count.index)
  description       = "Allow from internet to tcp port ${element(var.allow_tcp_ports, count.index)}"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "access_udp_from_internet" {
  security_group_id = aws_security_group.this.id
  type              = "ingress"
  count             = length(var.allow_udp_ports)
  from_port         = element(var.allow_udp_ports, count.index)
  to_port           = element(var.allow_udp_ports, count.index)
  description       = "Allow from internet to udp port ${element(var.allow_udp_ports, count.index)}"
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "access_from_vpc" {
  security_group_id = aws_security_group.this.id
  description       = "Allow connecting from VPC"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  cidr_blocks       = [var.cidr_vpc]
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
