variable "github_token" {
  description = "PAT with repo + admin:org scope for the *person* running Terraform."
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "Name of the GitHub organisation to manage (e.g. \"villaextech\")."
  type        = string
}


variable "repositories" {
  description = "map of git repos"
  type = map(object({
    name        = string
    description = string
    visibility  = string
    auto_init   = bool

  }))

}


variable "secrets" {
  description = "A map of GitHub Actions secrets"
  type = map(object({
    repository = string
    name       = string
    value      = string
  }))
}























## ------------------------------------EC2 Resources-------------------------------------------
# AWS Provider Variables
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile to use for authentication"
  type        = string
}

# EC2 Variables
variable "instances" {
  description = "Map of EC2 instances to create"
  type = map(object({
    ami           = string
    instance_type = string
    subnet_id     = string
    vpc_id        = string
  }))
}
