resource "aws_api_gateway_rest_api" "weak_api_body" {
  name = "MyWeakAPI"
  body = jsonencode({
    swagger     = "2.0"
    info        = { title = "example", version = "1.0" }
    paths       = { "/path1" = { get = {} } }
    "x-checksum" = md5("api-spec-content")
  })
}
