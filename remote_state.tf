terraform {
    backend "s3" {
        bucket               = "friyay"
        workspace_key_prefix = "tf-timdb"
        key                  = "tf/timdb/state"
        region               = "us-east-1"
        dynamodb_table       = "terraform-state"
    }
}
