variable "ami_id" {
  description = "variable for amazon linux 2 ami id"
  type        = string
  default     = "ami-09021cbd462419e4c"
}

variable "az" {
  description = "variable for availability zone"
  type        = string
  default     = "us-west-1c"
}

variable "itype" {
  description = "variable for instance type"
  type        = string
  #default     = "t2.micro"
}

variable "key" {
  description = "variable for key"
  type        = string
  default     = "aws"
}

variable "ec2name" {
  description = "variable for ec2 name"
  type        = string
  default     = "tfvm1"
}

variable "user1" {
  description = "variable for user name"
  type        = string
  default     = "atlasuser1"
}

variable "user2" {
  description = "variable for user name"
  type        = string
  default     = "atlasuser2"
}