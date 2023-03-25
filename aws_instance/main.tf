resource "aws_instance" "this" {
  instance_type     = var.instance_type
  ami               = var.ami
  availability_zone = var.azs
  security_groups   = [var.security_group_id]
  subnet_id         = var.public_subnet_id
  key_name          = var.ssh_key

  root_block_device {
    volume_size = var.root_block_size
    volume_type = var.root_volume_type
  }

  tags = merge(var.instance_tags, {
    Name = var.instance_name
  })
}

resource "aws_eip" "this" {
  instance = aws_instance.this.id
  vpc      = true

  tags = merge(var.instance_tags, {
    Name = "${var.instance_name}-EIP"
  })
}
