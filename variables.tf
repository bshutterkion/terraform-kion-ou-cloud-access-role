variable "name" {
  description = "Name of the cloud access role"
  type        = string
}

variable "ou_id" {
  description = "ID of the OU associated with the cloud access role"
  type        = number
}

variable "aws_iam_role_name" {
  description = "Name of the AWS IAM role"
  type        = string
}

variable "web_access" {
  description = "Enable web access"
  type        = bool
  default     = false
}

variable "short_term_access_keys" {
  description = "Enable short-term access keys"
  type        = bool
  default     = false
}

variable "long_term_access_keys" {
  description = "Enable long-term access keys"
  type        = bool
  default     = false
}

variable "aws_iam_path" {
  description = "Path for the AWS IAM role"
  type        = string
  default     = null
}

variable "aws_iam_permissions_boundary" {
  description = "Permissions boundary for the AWS IAM role"
  type        = number
  default     = null
}

variable "aws_iam_policies" {
  description = "List of AWS IAM policies to attach to the role"
  type = list(object({
    id = number
  }))
  default = []
}

variable "azure_role_definitions" {
  description = "List of Azure role definitions to attach to the role"
  type = list(object({
    id = number
  }))
  default = []
}

variable "gcp_iam_roles" {
  description = "List of GCP IAM roles to attach to the role"
  type = list(object({
    id = number
  }))
  default = []
}

variable "user_groups" {
  description = "List of user groups to assign to the role"
  type = list(object({
    id = number
  }))
  default = []
}

variable "users" {
  description = "List of users to assign to the role"
  type = list(object({
    id = number
  }))
  default = []
}
