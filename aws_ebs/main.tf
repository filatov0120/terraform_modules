resource "aws_ebs_volume" "this" {
  availability_zone = var.azs
  size              = var.size

  tags = merge(var.common_tags, { 
    Name = "Volume_for_${var.proj_name}" 
    })
}