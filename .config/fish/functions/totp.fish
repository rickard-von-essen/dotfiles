function totp -a command -a filter -d "Get/List totp from Yubikey"

  set -l DEVICE_ID 4872523

  if [ $command = "list" ]
    ykman -d $DEVICE_ID oath accounts list

  else if [ $command = "get" ]

    set CLIPBOARD wl-copy

    if [ $OSTYPE = "darwin" ]
      set CLIPBOARD pbcopy
    end

    ykman -d $DEVICE_ID oath accounts code -s $filter | $CLIPBOARD
  end
end
