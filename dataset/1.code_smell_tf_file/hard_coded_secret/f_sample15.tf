provider "digitalocean" {
  token = trimspace(file("/srv/secrets-newsblur/keys/digital_ocean.token"))
}
