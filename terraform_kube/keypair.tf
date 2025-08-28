resource "openstack_compute_keypair_v2" "k8s_keypair" {
  name = var.keypair_name
  public_key = file(var.public_key_path)
}