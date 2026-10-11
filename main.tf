data "github_repository_webhooks" "repository_webhooks_lookup" {
  for_each = var.repository_webhooks_lookup

  repository = each.value.repository
}

