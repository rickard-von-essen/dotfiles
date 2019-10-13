function certbot-r53-create --argument-names name --description='Create a LE cert backed by a DNS1 claim in Route53'
  set -x AWS_PROFILE=admin

  certbot certonly \
    -n \
    --agree-tos \
    --email rickard.von.essen@gmail.com \
    --dns-route53 \
    -d $name \
    --config-dir ~/Documents/letsencrypt/etc/ \
    --work-dir ~/Documents/letsencrypt/lib/ \
    --logs-dir ~/Documents/letsencrypt/log/
end

