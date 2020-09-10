terraform {
  backend "s3" {
    region   = "ru-central1"
    endpoint = "storage.yandexcloud.net"
    bucket   = "tf-states"
    key      = "gitlab_ci/terraform.tfstate"

    shared_credentials_file     = "var.aws_credentials_path"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
