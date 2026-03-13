// This file is used to create the S3 bucket and DynamoDB table to store Terraform state
// Required AWS permissions:
// - s3:CreateBucket
// - s3:PutEncryptionConfiguration
// - s3:PutBucketVersioning
// - s3:PutBucketPublicAccessBlock
// - dynamodb:CreateTable
// - dynamodb:PutItem
