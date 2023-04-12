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

variable "vpc_id" {
  description = "VPC for instance"
}

variable "cidr_vpc" {
  description = "VPC_cidr_block"
}

variable "subnet_id" {
  description = "Subnet ID for instance"
}

variable "allow_ports" {
  description = "List of ports to open for server"
  type        = list(any)
  default     = []
}

variable "project_name" {
  description = "Project name"
  default     = ""
}

variable "instance_tags" {
  description = "Common tags to apply resourses"
  type        = map(any)
  default = {
    Name        = ""
    Project     = ""
    Environment = ""
  }
}
