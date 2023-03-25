variable "region" {
  default = "us-east-1"
}

variable "azs" {
  type        = string
  description = "Availability Zones list"
  default     = "us-east-1a"
}

variable "ssh_key" {
  description = "SSH key pair for instance"
  type        = string
}

variable "ami" {
  description = "ami for instance"
  type        = string
}

variable "instance_name" {
  description = "My instance's name"
  type        = string
  default     = "Blaize_Host"
}

variable "instance_type" {
  description = "My instance's type"
  type        = string
  default     = "t2.micro"
}

variable "root_block_size" {
  description = "Storage size"
  type        = number
  default     = 10
}

variable "root_volume_type" {
  description = "Storage type"
  type        = string
  default     = "gp2"
}

variable "instance_profile" {
  type    = string
  default = null
}

variable "security_group_id" {
  description = "Security group ID"
}

variable "subnet_id" {
  description = "Subnet ID for instance"
}

variable "instance_tags" {
  description = "Common tags to apply resourses"
  type        = map(any)
  default = {
    Name        = "Host"
    Project     = "OMOMO"
    Environment = "DEV"
  }
}
