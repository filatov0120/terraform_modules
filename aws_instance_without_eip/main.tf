resource "aws_instance" "this" {
  instance_type          = var.instance_type
  ami                    = var.ami
  availability_zone      = var.azs
  vpc_security_group_ids = [aws_security_group.this.id]
  subnet_id              = var.subnet_id
  key_name               = var.ssh_key

  root_block_device {
    volume_size = var.root_block_size
    volume_type = var.root_volume_type
  }

  tags = merge(var.instance_tags, {
    Name = var.instance_name
  })
}