variable "region" {
  default = "us-east-1"
}

variable "azs" {
  type        = string
  description = "Availability Zones list"
  default     = "us-east-1a"
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

variable "public_subnet_id" {
  description = "Public subnet ID"
}

variable "common_tags" {
  description = "Common tags to apply resourses"
  type        = map(any)
  default = {
    Name        = "Host"
    Project     = "OMOMO"
    Environment = "DEV"
  }
}

variable "instance_profile" {
  type    = string
  default = null
}

variable "security_group_id" {
  description = "The ID of VPC in which to create ec2 instance."
  default     = ["sg-0ba3b913fde198637"]
}

variable "subnet_id" {
  description = "Public subnet ID"
  default     = "subnet-0af200c6a05bc6356"
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
