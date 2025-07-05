variable "subscription_id" {
  type = string
  description = "Azure subscription ID"
}

variable "location" {
  type = string
  description = "Azure region"
  default = "Central US"
}

variable "project" {
  type = string
  description = "Project name"
  default = "dsecommerce"
}

variable "enviroment" {
  type = string
  description = "Deployment environment"
  default = "dev"
}

variable "tags" {
  type = map(string)
  description = "Tags for all resources"
  default = {
    enviroment = "dev"
    date = "july-2025"
    createdBy = "Daniel Villeda"
    method = "terraform"
  }
}

