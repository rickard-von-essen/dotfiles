function assume-role -a role -d "Assumes a Role and sets credentials as environment variables"

  set -l DEVICE_ID 4872523

  if test $role = "diabol-admin"
    set role_arn "arn:aws:iam::398635496801:role/SuAdmin"
    set serial "arn:aws:iam::398635496801:mfa/rickard"
    set profile diabol
    set oath "AWS rickard@diabol"
  end

  if test $role = "diabol-web-admin"
    set role_arn "arn:aws:iam::489272345633:role/SuAdmin"
    set serial "arn:aws:iam::398635496801:mfa/rickard"
    set profile diabol
    set oath "AWS rickard@diabol"
  end

  if test $role = "medinet-admin"
    set role_arn "arn:aws:iam::718488076712:role/SuAdmin"
    set serial "arn:aws:iam::398635496801:mfa/rickard"
    set profile diabol
    set oath "AWS rickard@diabol"
  end

  set -e AWS_SESSION_TOKEN

  set -l temp_role (aws --profile $profile sts assume-role \
    --serial-number $serial \
    --token-code (ykman -d $DEVICE_ID oath code -s "$oath") \
    --role-arn "$role_arn" \
    --role-session-name "$USER@"(hostname -s)"-$role")

  echo "set -x AWS_ACCESS_KEY_ID "(echo $temp_role | jq -r .Credentials.AccessKeyId)
  echo "set -x AWS_SECRET_ACCESS_KEY "(echo $temp_role | jq -r .Credentials.SecretAccessKey)
  echo "set -x AWS_SESSION_TOKEN "(echo $temp_role | jq -r .Credentials.SessionToken)
end
