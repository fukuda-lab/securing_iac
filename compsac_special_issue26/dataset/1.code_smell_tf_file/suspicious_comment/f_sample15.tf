resource "aws_route53_record" "www" {
   # currently there is the only way to use nlb dns name in k3s
   # because the real dns name is too long and cause an issue
   zone_id = "${var.zone_id}"
   name = "${var.domain_name}"
   type = "CNAME"
   ttl = "30"
   records = ["${aws_lb.k3s-master-nlb.dns_name}"]
}
