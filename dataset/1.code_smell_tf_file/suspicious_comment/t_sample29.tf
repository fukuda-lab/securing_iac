resource "aws_eip" "nat_ip" {
##  instance = "${aws_instance.web.id}"
  vpc      = true
}
