variable "networking_router_route_v2s" {
  description = <<EOT
Map of networking_router_route_v2s, attributes below
Required:
    - destination_cidr
    - next_hop
    - router_id
Optional:
    - region
EOT

  type = map(object({
    destination_cidr = string
    next_hop         = string
    router_id        = string
    region           = optional(string)
  }))
}

