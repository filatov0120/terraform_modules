resource "aws_vpc" "main" {
  cidr_block           = var.cidr_vpc
  enable_dns_hostnames = true
  tags                 = merge(var.vpc_tags, { Name = "${var.proj_name}-VPC" })
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.azs
  tags              = merge(var.vpc_tags, { Name = "${var.proj_name}_private_subnet" })
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags   = merge(var.vpc_tags, { Name = "${var.proj_name}_vpc_igw" })
}

resource "aws_route_table" "igw_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = merge(var.vpc_tags, { Name = "${var.proj_name}_rt_to_igw_" })
}

resource "aws_route_table_association" "subnet_asso" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.igw_rt.id
}
