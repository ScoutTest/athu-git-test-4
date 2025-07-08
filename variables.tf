# variables.tf
variable "aws_region" {
  description = "AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile to use."
  type        = string
  default     = "default"
}

variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
  default     = "prod-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnets" {
  description = "List of public subnet CIDRs."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDRs."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "ec2_name" {
  description = "Name for the EC2 instance."
  type        = string
  default     = "prod-ec2"
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0c94855ba95c71c99" # Amazon Linux 2 in us-east-1
}

variable "ec2_instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "ec2_key_name" {
  description = "SSH key name for EC2 instance."
  type        = string
  default     = "default-key"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default = {
    Environment = "production"
    Terraform   = "true"
  }
}
