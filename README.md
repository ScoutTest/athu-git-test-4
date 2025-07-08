# AWS Terraform Best Practices Example

This Terraform configuration provisions a secure AWS VPC with public and private subnets, a NAT gateway, and a sample EC2 instance using best practices and official modules.

## Structure
- **main.tf**: Core infrastructure using official AWS modules
- **providers.tf**: Provider and Terraform version constraints
- **variables.tf**: Input variables with best-practice defaults
- **outputs.tf**: Useful outputs for integration and visibility
- **terraform.tfvars**: Example variable values for production
- **README.md**: This documentation

## Usage
1. Install [Terraform](https://www.terraform.io/downloads.html) >= 1.3.0
2. Configure your AWS credentials/profile
3. Initialize and apply:
   ```sh
   terraform init
   terraform apply
   ```

## Security & Best Practices
- Uses official, community-verified modules
- Enables NAT gateway for private subnet egress
- Tags all resources for cost and environment tracking
- Uses separate public/private subnets across multiple AZs
- Outputs key resource IDs and public IPs

## Customization
Edit `terraform.tfvars` or override variables via CLI to suit your environment.

---

**Note:** This is a production-grade starting point. Review and adjust for your organization's security and compliance requirements.
