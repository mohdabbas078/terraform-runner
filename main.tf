provider "google" {
  credentials = "test.json"
}

module "getvpc" {
  source = "git::https://github.com/mohdabbas078/module-terraform.git"
  network = "default"
}

output "self_link" {
  value = module.getvpc.self_link
}
