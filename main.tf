provider "aws" {
  region  = "us-west-2"
}

resource "random_integer" "count" {
  min = 4
  max = 20
  keepers = {
    uuid = uuid()
  }
}
resource "random_pet" "server" {
  length = random_integer.count.result
  prefix = var.name
}
