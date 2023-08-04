resource "digitalocean_project" "main" {
  name        = "main"
  description = "Main project for my infrastructure."
  purpose     = "Holds all my DigitalOcean resources."
  environment = "Production"
  is_default  = true
}
