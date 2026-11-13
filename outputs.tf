output "repository_webhooks_lookup_id" {
  description = "Map of id values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.id }
}
output "repository_webhooks_lookup_repository" {
  description = "Map of repository values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.repository }
}
output "repository_webhooks_lookup_webhooks" {
  description = "Map of webhooks values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.webhooks }
}

