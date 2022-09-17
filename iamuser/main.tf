resource "aws_iam_user" "lb" {
    for_each = var.username
    name = each.value

  tags = {
    name = "parneet"
  }
}