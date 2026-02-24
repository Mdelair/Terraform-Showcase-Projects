variable "resource_group_name" {
  type        = string
  default     = "rg-terraform-vm-demo"
}

variable "location" {
  type        = string
  default     = "uksouth"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
  sensitive   = true
}
