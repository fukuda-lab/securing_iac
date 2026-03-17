resource "aws_ses_domain_identity" "dzhw" {
  domain = "dzhw.eu"
}

resource "aws_ses_domain_dkim" "dzhw" {
  domain = aws_ses_domain_identity.dzhw.domain
}
