output "server_id" {
  value = openstack_compute_instance_v2.k8s_master.id
}

output "floating_ip" {
  value = openstack_networking_floatingip_v2.k8s_master_fip.address
}

output "server_port_id" {
  value = openstack_networking_port_v2.k8s_master_port.id
}

output "problem_ips" {
  value = {
    master_ip   = var.server_fixed_ip
    worker01_ip = var.worker01_fixed_ip
    worker02_ip = var.worker02_fixed_ip
    worker03_ip = var.worker03_fixed_ip
  }
}