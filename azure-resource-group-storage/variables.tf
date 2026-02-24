variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-terraform-demo"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "uksouth"
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name (must be globally unique, lowercase, 3-24 chars)"
  default     = "tfstoragedemomuhammad"
}
