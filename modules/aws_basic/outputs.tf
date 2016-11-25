output "public ip adress of inscance" {
  value = "${aws_instance.web.public_ip}"
}
