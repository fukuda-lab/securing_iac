resource "aws_s3_bucket_object" "install_h2o" {
  bucket = "${aws_s3_bucket.h2o_bucket.id}"
  key = "install_h2o.sh"
  acl = "private"
  content = <<EOF

#!/bin/bash
set -x -e

mkdir -p /home/hadoop/h2o
cd /home/hadoop/h2o

wget http://h2o-release.s3.amazonaws.com/h2o/rel-${var.h2o_codename}/${var.h2o_fix_version}/h2o-${var.h2o_main_version}.${var.h2o_fix_version}-hdp2.6.zip
unzip -o h2o*.zip 1> /dev/null & wait
aws s3 cp ${format("s3://%s/realm.properties", aws_s3_bucket.h2o_bucket.bucket)} realm.properties
keytool -genkey -keyalg RSA -keystore h2o.jks -keypass h2oh2o -storepass h2oh2o -keysize 2048 -dname "CN=John Smith, OU=H2O, O=H2O.ai, L=Mountain View, S=California, C=US"

EOF
}
