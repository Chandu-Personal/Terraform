output "ami_id" {
  value = "${aws_ami_copy.encrypted_ami.id}"
}