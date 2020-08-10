output "ext_ip_addr" {
  value = yandex_compute_instance.dmpool.*.network_interface.0.nat_ip_address
}
