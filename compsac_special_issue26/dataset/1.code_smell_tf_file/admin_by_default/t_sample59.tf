resource "aws_kms_key_policy" "policy_public_kms_decrypt" {
  key_id = "arn:aws:kms:ap-northeast-1:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "AllowAnyoneToDecrypt"
      Effect    = "Allow"
      Principal = "*"
      Action    = "kms:Decrypt"
      Resource  = "*"
    }]
  })
}
