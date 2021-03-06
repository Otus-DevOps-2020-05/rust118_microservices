provider "yandex" {
  service_account_key_file = var.svc_acct_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_compute_instance" "app" {

  name = "gitlab-ci"

  resources {
    cores         = 2
    memory        = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.disk_image
      size = 50
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  connection {
    type        = "ssh"
    host        = self.network_interface.0.nat_ip_address
    user        = var.username
    agent       = false
    private_key = file(var.private_key_path)
  }

  metadata = {
    ssh-keys = "var.username:${file(var.public_key_path)}"
  }
}
