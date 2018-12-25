function totp -a command -a filter -d "Get/List totp from Yubikey"

  set -l DEVICE_ID 4872523

  if [ $command = "list" ]
    ykman -d $DEVICE_ID oath list

  else if [ $command = "get" ]
    ykman -d $DEVICE_ID oath code -s $filter | pbcopy
  end
end
