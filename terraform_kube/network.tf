resource "openstack_networking_network_v2" "k8s_network" {
  name = var.network_name
}

resource "openstack_networking_subnet_v2" "k8s_subnet" {
  name = var.subnet_name
  network_id = openstack_networking_network_v2.k8s_network.id
  cidr = var.subnet_cidr
  ip_version = 4
  dns_nameservers = ["8.8.8.8"]
}

resource "openstack_networking_router_v2" "k8s_router" {
  name = var.router_name
  external_network_id = var.external_network_id
}

resource "openstack_networking_router_interface_v2" "k8s_router_iface" {
  router_id = openstack_networking_router_v2.k8s_router.id
  subnet_id = openstack_networking_subnet_v2.k8s_subnet.id
}