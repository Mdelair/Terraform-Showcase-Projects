# Azure Resource Group Deployment with Terraform & GitHub Actions

This project demonstrates how to deploy an Azure Resource Group using Terraform,
with CI/CD automation provided by GitHub Actions.

## Features
- Terraform IaC for Azure
- GitHub Actions pipeline (fmt, validate, plan, apply)
- OIDC authentication (no secrets required)
- Pull request workflow for safe deployments
- Tags included for FinOps visibility

## How It Works
1. Create a feature branch
2. Commit changes and open a pull request
3. GitHub Actions runs Terraform plan
4. Merge to main triggers Terraform apply

## Technologies Used
- Terraform
- GitHub Actions
- Azure Resource Manager
- OIDC (OpenID Connect) Authentication used inside the GitHub Actions workflow to authenticate to Azure without storing secrets.

## Future Enhancements
- Add VNet module
- Add Storage Account module
- Add Azure Policy for tagging

## How GitHub Actions Runs This Pipeline Automatically
GitHub Actions detects and runs this pipeline automatically because of two key things:

1. The workflow file is stored in a special folder
GitHub only looks for workflow files inside this directory:

.github/workflows/

Any  or  file placed in this folder is automatically treated as a CI/CD pipeline.

In this project, the pipeline file is located at:

.github/workflows/terraform-pipeline.yml

As soon as this file exists in the repository, GitHub enables the workflow.

2. The workflow contains triggers that tell GitHub when to run

Inside the YAML file, the on: section defines the events that should trigger the pipeline:
on:
  pull_request:
    branches: [ "main" ]
  push:
    branches: [ "main" ]


This means:
- When you open a pull request -> GitHub runs Terraform fmt, validate, and plan
- When you push or merge to the main branch -> GitHub runs Terraform apply
- No manual action is required - GitHub handles everything automatically
