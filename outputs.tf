# outputs.tf
output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "List of public subnet IDs."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of private subnet IDs."
  value       = module.vpc.private_subnets
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance."
  value       = module.ec2.id
}

output "ec2_public_ip" {
  description = "The public IP of the EC2 instance."
  value       = module.ec2.public_ip
}
