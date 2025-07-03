variable "secrets" {
  description = "A map of GitHub Actions secrets"
  type = map(object({
    repository = string
    name       = string
    value      = string
  }))
}
