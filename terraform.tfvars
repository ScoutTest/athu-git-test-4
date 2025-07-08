# terraform.tfvars
aws_region        = "us-east-1"
aws_profile       = "default"
vpc_name          = "prod-vpc"
vpc_cidr          = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets   = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
ec2_name          = "prod-ec2"
ec2_ami           = "ami-0c94855ba95c71c99"
ec2_instance_type = "t3.micro"
ec2_key_name      = "default-key"
tags = {
  Environment = "production"
  Terraform   = "true"
}
