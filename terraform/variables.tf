variable "aws_profile" {
  default = "default"
}

variable "aws_region" {
  default = "us-west-2"
}

# variable "host_subnet" {}

# variable "host_security_group" {}

# variable "reverse_proxy_repo_name" {}

variable "desired_size" {
  default = 1
}

variable "max_size" {
  default = 2
}

variable "min_size" {
  default = 1
}
