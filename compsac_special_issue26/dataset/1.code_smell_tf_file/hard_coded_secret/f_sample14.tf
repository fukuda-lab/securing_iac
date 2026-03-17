terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    bucket                  = "newsblur.terraform"
    key                     = "newsblur.terraform.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "/srv/secrets-newsblur/keys/aws.s3.token"
  }
}
