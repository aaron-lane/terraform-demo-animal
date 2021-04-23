output "animal" {
  value = "${random_pet.server.id}"
}

output "number" {
  value = random_integer.count.id
}
