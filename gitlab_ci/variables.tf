variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable region {
  description = "Region"
  default     = "ru-central1"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable disk_image {
  description = "Disk image id for reddit app"
  default     = "fd89n6gu8majer534uc9"
}

variable subnet_id {
  description = "Subnet ID"
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

variable svc_acct_key_file {
  description = "Path to service account key"
}

variable aws_credentials_path {
  description = "Path to AWS credentials file"
  default     = "~/.aws/credentials"
}
