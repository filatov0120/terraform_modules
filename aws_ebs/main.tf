resource "aws_ebs_volume" "this" {
  availability_zone = var.azs
  size              = var.size
  type              = var.type
  tags              = var.common_tags
}
