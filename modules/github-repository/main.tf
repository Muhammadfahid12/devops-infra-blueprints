resource "github_repository" "repo" {
  for_each = var.repositories

  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
  auto_init   = each.value.auto_init
}