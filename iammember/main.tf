resource "aws_iam_user_group_membership" "group-membership" {
  #user = aws_iam_user.lb.name
  for_each = var.username
  user     = each.value
  groups   = [var.gpname]
  
}