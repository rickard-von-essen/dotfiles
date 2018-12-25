function ecr-login -d "Log in with RO credentials into iZettle ECR"
  eval (env AWS_PROFILE=docker-pull aws ecr get-login --no-include-email)
end
