provider "yandex" {
  service_account_key_file = var.svc_acct_key_file
  cloud_id                 = var.cloud_id
  zone                     = var.zone_id
  folder_id                = var.folder_id
}

resource "yandex_compute_instance" "dmpool" {
  name  = "docker-${count.index}"
  count = var.inst_qty

  labels = {
    tags = "docker-pool"
  }

  resources {
    core_fraction = 20
    cores         = 2
    memory        = 2
  }

  scheduling_policy {
    preemptible = var.inst_preemptible
  }

  boot_disk {
    initialize_params {
      image_id = var.disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "var.username:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = self.network_interface.0.nat_ip_address
    user        = var.username
    agent       = false
    private_key = file(var.private_key_path)
  }
}
