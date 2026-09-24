variable "app_name" {
  type        = string
  default     = "app-test"
  description = "Application name, used as prefix for all resource names."
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Target environment (dev/staging/prod)."
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region for all resources."
}

variable "owner" {
  type        = string
  default     = "user:default/alice"
}

variable "team_name" {
  type        = string
  default     = "group:default/payments-team"
}

variable "postgres_admin_username" {
  type        = string
  default     = "pgadmin"
  description = "Postgres admin login. Password is generated randomly and stored only in Key Vault."
}
