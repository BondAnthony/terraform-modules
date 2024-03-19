resource "google_compute_network" "vpc_network" {
  name                    = "tailscale-net"
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu                     = var.mtu
}
