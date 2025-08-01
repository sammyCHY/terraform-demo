resource "aws_s3_bucket" "s3_bucket_special_1" {
    bucket      = "my-s3-bucket-special-7742"

    tags        = {
        Name    = "my-s3-bucket-tag"
    }
}

# resource "aws_s3_bucket" "s3_bucket_special_2" {
#     bucket      = "my-s3-bucket-special-2"

#     tags        = {
#         Name    = "my-s3-bucket-tag"
#     }
# }

