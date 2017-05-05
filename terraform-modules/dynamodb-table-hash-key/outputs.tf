output "name" {
  value = "${aws_dynamodb_table.main.id}"
}

output "arn" {
  value = "${aws_dynamodb_table.main.arn}"
}