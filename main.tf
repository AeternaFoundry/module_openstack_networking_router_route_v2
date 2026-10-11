resource "openstack_networking_router_route_v2" "networking_router_route_v2s" {
  for_each = var.networking_router_route_v2s

  destination_cidr = each.value.destination_cidr
  next_hop         = each.value.next_hop
  router_id        = each.value.router_id
  region           = each.value.region
}

