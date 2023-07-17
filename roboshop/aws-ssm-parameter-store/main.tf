resource "aws_ssm_parameter" "parameters" {
  count  = length(var.parameters)
  name   = var.parameters[count.index].name
  value  = var.parameters[count.index].value
  type   = "String"
  key_id = "b70d077e-755a-421f-a6ae-afbf0392276d"
}

## Passwords are not at all meant to keep inside the code at all, Here since it is a lab we are doing it to save the time.
## One of the scenario that mostly used in real way is , Enter the passwords manually in Parameter Store by someone for passwords.
resource "aws_ssm_parameter" "passwords" {
  count  = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  type   = "SecureString"
  key_id = "b70d077e-755a-421f-a6ae-afbf0392276d"
}