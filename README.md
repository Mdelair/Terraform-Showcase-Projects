# Terraform Cloud Projects – Azure & AWS

Welcome to my Terraform showcase.  
This repo contains small, clear examples of how I use Terraform to build cloud resources in Azure and AWS.  
I created these projects to show my understanding of Infrastructure‑as‑Code. Each project is simple, well‑structured, and easy to run.  
You can open any folder to see the Terraform files and a short guide.

---

##  What’s inside

### **1. Azure Resource Group + Storage Account**
A basic project that creates:
- A Resource Group  
- A Storage Account  

Good example of variables, outputs, and simple Azure resources.

---

### **2. Azure Linux Virtual Machine**
This project builds:
- A VNet  
- A Subnet  
- A Network Interface  
- An Ubuntu Linux VM  

Shows how networking connects to a VM and how Terraform links resources together.

---

### **3. AWS S3 Static Website**
A small AWS example that:
- Creates an S3 bucket  
- Enables static website hosting  

Shows how Terraform works with AWS providers.

---

##  How to run any project

Open terminal in the folder.

Azure projects:

az login

AWS project:

aws configure (once, if not already done)

Run:

```bash
terraform init
terraform plan
terraform apply
##once done run the below to clean up
terraform destroy
