variable "azs" {
    description = "Availability Zones list"
    default     = "us-east-1a"  
}

variable "size" {
    description = "Storage size"
}

variable "app_name" {
  description = "Application name"
  default     = ""
}

variable "env" {
  description = "Name of env"
  type        = string
  default     = ""
}

variable "proj_name" {
  description = "Name of project"
  type        = string
  default     = ""
}

variable "common_tags" {
  description = "Common tags to apply resourses"
  type        = map(any)
  default = {
    Name        = ""
    Project     = ""
    Environment = ""
  }
}