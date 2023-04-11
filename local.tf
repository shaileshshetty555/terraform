resource "local_file" "foo" {
  content         = var.content
  filename        = var.filename
  file_permission = var.file_permission

  lifecycle {
    create_before_destroy = true

  }





}




resource "random_pet" "my-pet" {

  prefix = var.prefix

  length = var.length

}

output "pet-name" {
  value       = random_pet.my-pet.id
  description = "pet id"
}
