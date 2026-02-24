# Azure Resource Group + Storage Account (Terraform)

## Why I built this
I created this small project to show that I understand the basics of Azure and Terraform.  
A Resource Group and a Storage Account are simple, but they prove I can structure Terraform code properly, use variables, outputs, and follow the standard workflow.  

## What it does
- Creates an Azure Resource Group  
- Creates a Storage Account inside it

## Considerations
- Provider block: I declare the `azurerm` provider and pin a version so the code is stable over time.
- Resource group: I create a resource group using variables so I can reuse this in different environments.
- Storage account: I reference the resource group’s name and location, and set basic properties like tier and replication.
- Variables: I use defaults for quick demos but they can be overridden via `terraform.tfvars` or CLI. 
- Outputs: I output key values so they’re easy to see or use in other modules. 

## How to run it
```bash
az login
terraform init
terraform plan
terraform apply
---
