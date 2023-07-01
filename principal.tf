provider "google"{
    credentials = "${file("credenciales.json")}"
    project = "p4-ansible"
    region      = "europe-southwest1"
    zone        = "europe-southwest1-a"
}