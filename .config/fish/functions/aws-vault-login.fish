function aws-vault-login -a account -d "Uses Corp Vault to login to AWS"
  if test -z "$account"
    echo "Argument account must be [orgmaster|dwh-dr] "
    return 5
  end

  switch $account
    case orgmaster
      set -x AWS_PROFILE king-orgmaster-prod-admin
      set -x AWS_ACCOUNT_NR 140822428037
    case dwh-dr
      set -x AWS_PROFILE king-dwh-dr-prod-admin
      set -x AWS_ACCOUNT_NR 969474322023
    case '*'
      echo "Argument account must be [orgmaster|dwh-dr] "
      return 3
  end
  set -l TMP_FILE (mktemp)

  if not vault status -address https://vault.corp.midasplayer.com > /dev/null
    echo "You have to login into Corp vault"
    echo "    vault login -address https://vault.corp.midasplayer.com -method ldap"
    return 1
  end

  # aws/creds/acl_aws_
  vault read aws/sts/acl_aws_{$AWS_ACCOUNT_NR}_administratoraccess ttl=4h -format=json > $TMP_FILE

  set -l AWS_ACCESS_KEY_ID (cat $TMP_FILE | jq -r '.data.access_key')
  set -l AWS_SECRET_ACCESS_KEY (cat $TMP_FILE | jq -r '.data.secret_key')
  set -l AWS_SESSION_TOKEN (cat $TMP_FILE | jq -r '.data.security_token')

  aws configure set region eu-west-1
  aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
  aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
  aws configure set aws_session_token $AWS_SESSION_TOKEN

  rm -f $TMP_FILE
  echo "Configured profile $AWS_PROFILE"
end
