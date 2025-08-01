terraform {

    backend "s3" {
        bucket = "statefilebucket7742"
        key = "terraform/state-file/terraform.tfstate"
        use_lockfile = true
        encrypt = true
        region = "us-east-2"
    }
}

provider "aws" {

}