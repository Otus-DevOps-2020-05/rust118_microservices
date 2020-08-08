variable cloud_id {
  description = "Cloud"
}
variable zone_id {
  description = "Zone"
}
variable folder_id {
  description = "Folder"
}
variable subnet_id {
  description = "Subnet ID"
}

variable svc_acct_key_file {
  description = "Path to service account key"
}
variable aws_credentials_path {
  description = "Path to AWS credentials file"
}

variable inst_qty {
  description = "Number of instances"
  default     = 2
}
variable inst_preemptible {
  type        = bool
  description = "Preemptible flag"
  default     = true
}

variable disk_image {
  description = "Disk image id for reddit app"
}

variable username {
  description = "User name"
  default     = "ubuntu"
}
variable private_key_path {
  description = "Path to private key used for ssh access"
  default     = "~/.ssh/ubuntu"
}
variable public_key_path {
  description = "Path to public key used for ssh access"
  default     = "~/.ssh/ubuntu.pub"
}
