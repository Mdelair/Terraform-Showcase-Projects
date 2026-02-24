# Azure Linux VM

## Why I built this
I wanted to show that I understand how Azure networking works and how Terraform links resources together.  
This project shows I can create a VNet, Subnet, NIC, and a Linux VM.  
It also shows I understand the order of resources and how Terraform handles dependencies.

## What this project does
- Creates a VNet, Subnet, NIC
- Deploys an Ubuntu Linux VM
- Uses a simple password-based login (demo only)

VNet → Subnet → NIC → VM.

## Considerations
- Security: In a real environment I’d use SSH keys and Key Vault; here I keep it simple for demo.
- Image: I use a standard Ubuntu image via source_image_reference.”
- Cost awareness: I pick a small size (Standard_B1s) and always destroy after testing.

## Deploy
```bash
az login
terraform init
terraform plan
terraform apply
