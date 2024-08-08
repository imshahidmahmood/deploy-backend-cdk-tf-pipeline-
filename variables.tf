variable "existing_connection_arn" {
  description = "ARN of the existing CodeStar connection"
  type        = string
}

# variable "github_token" {
#   description = "OAuth token for GitHub"
#   type        = string
#   sensitive   = true
# }

variable "full_repo_id" {
  description = "Full Repository ID"
  type        = string
}

variable "repo_branch_name" {
  description = "Repository Name"
  type        = string
}