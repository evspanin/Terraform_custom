resource "openstack_networking_secgroup_v2" "k8s_sg" {
  name = var.secgroup_name
  description = "Security group k8s_network"
}

resource "openstack_networking_secgroup_rule_v2" "icmp_within_sg" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  remote_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "icmp"
}

resource "openstack_networking_secgroup_rule_v2" "icmp_from_any" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
}

resource "openstack_networking_secgroup_rule_v2" "tcp_within_sg" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  remote_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
}

resource "openstack_networking_secgroup_rule_v2" "ssh" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "22"
  port_range_max = "22"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "tcp_179" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "179"
  port_range_max = "179"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "kube_api" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "6443"
  port_range_max = "6443"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "etcd" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "2379"
  port_range_max = "2380"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "tcp_10250" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "10250"
  port_range_max = "10250"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "tcp_10256" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "10256"
  port_range_max = "10256"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "nodeport" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "tcp"
  ethertype = "IPv4"
  port_range_min = "30000"
  port_range_max = "32767"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "udp_within_sg" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  remote_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "udp"
}

resource "openstack_networking_secgroup_rule_v2" "udp_4789" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "udp"
  ethertype = "IPv4"
  port_range_min = "4789"
  port_range_max = "4789"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "udp_6081" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "udp"
  ethertype = "IPv4"
  port_range_min = "6081"
  port_range_max = "6081"
  remote_ip_prefix = var.admin_cidr
}

resource "openstack_networking_secgroup_rule_v2" "udp_8472" {
  security_group_id = openstack_networking_secgroup_v2.k8s_sg.id
  direction = "ingress"
  protocol = "udp"
  ethertype = "IPv4"
  port_range_min = "8472"
  port_range_max = "8472"
  remote_ip_prefix = var.admin_cidr
}