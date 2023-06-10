resource "aws_ebs_volume" "this" {
  availability_zone = var.azs
  size              = var.size
  type              = var.type
  tags              = merge(var.common_tags, { Name = "${var.proj_name}_volume" })
}
