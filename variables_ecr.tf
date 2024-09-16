variable "ecr_repository_name" {
  type = list(string)
}

variable "scan_on_push" {
  type    = bool
  default = false
}

variable "image_tag_mutability" {
  type = string
}

variable "force_delete" {
  type = bool
}

variable "image_count" {
  description = "Image count for lifecycle policy"
  type = number
}