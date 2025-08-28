variable "os_auth_url" { default = "http://10.49.100.254:5000"}
variable "os_username" { default = "admin"}
variable "os_password" { default = ""}
variable "os_project_name" { default = "admin" }

variable "network_name" { default = "k8s_network" }
variable "subnet_name" { default = "k8s_subnet" }
variable "subnet_cidr" { default = "10.180.20.0/24" }
variable "router_name" { default = "k8s_router" }
variable "external_network_id" { default = "91e271d1-a206-4750-b6d8-febf9f12cf41"} # id or name of public/external network
variable "floating_pool" { default = "external-net"} # pool name for floating IPs

variable "secgroup_name" { default = "k8s_sg" }
variable "admin_cidr" { default = "0.0.0.0/0" } # restrict in prod

variable "keypair_name" { default = "k8s_keypair" }
variable "public_key_path" { default = "~/.ssh/id_ed25519.pub" }

variable "image_name" { default = "ubuntu_server" }
variable "image_file_path" { default = "/var/lib/libvirt/images/noble-server-cloudimg-amd64.img" }

variable "server_name" { default = "k8s_master" }
variable "server_fixed_ip" { default = "10.180.20.3" }

variable "worker01_name" { default = "k8s_worker01" }
variable "worker01_fixed_ip" { default = "10.180.20.4" }

variable "worker02_name" { default = "k8s_worker02" }
variable "worker02_fixed_ip" { default = "10.180.20.5" }

variable "worker03_name" { default = "k8s_worker03" }
variable "worker03_fixed_ip" { default = "10.180.20.6" }


variable "flavor" { default = "m1.optimal" }
