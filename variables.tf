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
  default     = "alice"
}

variable "team_name" {
  type        = string
  default     = "platform-team"
}

variable "postgres_admin_username" {
  type        = string
  default     = "pgadmin"
  description = "Postgres admin login. Password is generated randomly and stored only as a Container App secret."
}

variable "ghcr_username" {
  type        = string
  default     = "huttyman-ais"
  description = "GitHub owner whose Container Registry (ghcr.io) hosts the frontend/backend images."
}

variable "ghcr_token" {
  type        = string
  sensitive   = true
  description = "GitHub PAT with read:packages, used as the ghcr.io pull credential. Set via TF_VAR_ghcr_token in CI (see terraform.yaml) — never given a default."
}
