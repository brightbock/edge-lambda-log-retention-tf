# Set Cloudwatch log retention for Lambda@Edge functions

[AWS lambda@edge](https://aws.amazon.com/lambda/edge/) will log to Cloudwatch logs in the region nearest to execution i.e. nearest to the user.

By default Cloudwatch log groups retain data forever, this can have cost and compliance concerns.

This Terraform module facilitates proactive creation of the log groups a Lambda@Edge function will use in each AWS region and sets the desired log retention period & tags.

## Usage:

  1. Add a module definition to your Terraform as shown in the example below
  2. Update `retention_in_days` to match your requirements
  3. Uncomment and update `common_tags` to tag each log group

```
module "edge_lambda_logs" {
  source            = "git::https://github.com/brightbock/edge-lambda-log-retention-tf.git?ref=v0.0.2"
  function_name     = "my_function_name"
  retention_in_days = "90"
  # common_tags       = { "tagKey" = "tagValue" }
}
```

### Notes:

  1. The acceptable values for `retention_in_days` are [defined by AWS here](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html#API_PutRetentionPolicy_RequestSyntax)
  2. Due to current Terraform limitations, it's not possible to determine a list of current AWS Regions for this module dynamically. A bash script [`GENERATE_PER_REGION.bash`](./GENERATE_PER_REGION.bash) is provided to update this module with new regions. The script requires the AWS CLI.
