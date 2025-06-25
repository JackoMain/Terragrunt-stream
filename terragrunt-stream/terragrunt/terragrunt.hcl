remote_state {
  backend = "s3"
  config = {
    bucket         = "tekanaid-terragrunt-demo"
    key            = "terragrunt/stream/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}
#reformat for different environments to have their own bucket and key. May use docker bake to help
inputs = {
  ami_id        = "ami-numbers" # Amazon Linux 2 AMI
  database_name = "stream_db"          // database name
  database_user = "stream_user"        //database username
  IsUbuntu          = false // true for ubuntu,false for linux 2  //boolean type
  PUBLIC_KEY_PATH  = "./mykey-pair.pub" // key name for ec2, make sure it is created before terrafomr apply
  PRIV_KEY_PATH    = "./mykey-pair"
  root_volume_size = 22
}