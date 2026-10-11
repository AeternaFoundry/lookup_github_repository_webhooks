variable "repository_webhooks_lookup" {
  description = <<EOT
Map of repository_webhooks_lookup, attributes below
Required:
    - repository
EOT

  type = map(object({
    repository = string
  }))
}

