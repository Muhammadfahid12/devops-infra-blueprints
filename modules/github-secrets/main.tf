resource "github_actions_secret" "secrets" {
  for_each = var.secrets

  repository      = each.value["repository"]
  secret_name     = each.value["name"]
  plaintext_value = each.value["value"]
}
