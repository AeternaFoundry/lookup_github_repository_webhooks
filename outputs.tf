output "repository_webhooks_lookup_id" {
  description = "Map of id values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_webhooks_lookup_repository" {
  description = "Map of repository values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_webhooks_lookup_webhooks" {
  description = "Map of webhooks values across all repository_webhooks_lookup, keyed the same as var.repository_webhooks_lookup"
  value       = { for k, v in data.github_repository_webhooks.repository_webhooks_lookup : k => v.webhooks if v.webhooks != null && length(v.webhooks) > 0 }
}

