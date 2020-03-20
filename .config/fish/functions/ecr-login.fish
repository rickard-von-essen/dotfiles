function ecr-login -d "Log in with RO credentials into iZettle ECR"
  env AWS_PROFILE=docker-pull aws ecr get-login-password --region eu-west-1 \
    | docker login --username AWS --password-stdin 538919794626.dkr.ecr.eu-west-1.amazonaws.com
end



