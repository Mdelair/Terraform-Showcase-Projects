# AWS S3 Static Website

Why I built this
I wanted to show that I can work with AWS as well as Azure.  
S3 static hosting is a simple but real example of cloud infrastructure.  
It proves I understand providers, variables, and how Terraform works across different clouds.

## What it does
- Creates an S3 bucket  
- Enables static website hosting  

## Considerations
- Provider: I configure the AWS provider with a region; credentials come from my local AWS CLI profile.
- Bucket: I create a simple S3 bucket with a unique name.
- Website config: I enable static website hosting and set index.html as the entry point.

## How to run it
```bash
aws configure
terraform init
terraform plan
terraform apply
