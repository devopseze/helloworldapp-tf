output "elb" {
  value = "${aws_elb.helloworldapp-elb.dns_name}"
}
