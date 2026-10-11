variable "database_cloud_vm_clusters_lookup" {
  description = <<EOT
Map of database_cloud_vm_clusters_lookup, attributes below
Required:
    - compartment_id
Optional:
    - cloud_exadata_infrastructure_id
    - display_name
    - state
    - vm_cluster_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                  = string
    cloud_exadata_infrastructure_id = optional(string)
    display_name                    = optional(string)
    state                           = optional(string)
    vm_cluster_type                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

