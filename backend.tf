# create Amazon s3 Bucket
resource "aws_s3_bucket" "my_state_file_bucket" {
    bucket  = "statefilebucket7742"
    force_destroy = true

    tags = {
        Name = "statefilebucket7742"
        Env = "Demo"
    }
}

resource "aws_s3_bucket_versioning" "my_state_file_bucket_versions" {
    bucket = aws_s3_bucket.my_state_file_bucket.id

    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "my_state_file_bucket_encryption" {
    bucket = aws_s3_bucket.my_state_file_bucket.id

    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}

resource "aws_dynamodb_table" "statelocktable" {
    name = "my-state-lock-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
       name = "LockID"
       type =  "S"   
    }

tags = {
        Name = "my-state-lock-table"
        Env = "Demo"
    }
}


