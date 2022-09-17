output "op-users" {
  value = {for k, v in var.username: k=>v}
}