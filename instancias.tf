resource "google_compute_instance" "default" {
  name = "instancia-terraform"
  machine_type = "e2-micro"
  zone = "europe-southwest1-a"
  boot_disk {
  initialize_params {
    image = "ubuntu-1804-bionic-v20200129a"
  }
}
 network_interface {
   network = "default"
 }

 metadata = {
  sshKeys = file("~/.ssh/id_rsa.pub")
 }
}