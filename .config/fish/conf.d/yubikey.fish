function yubioath
  /Applications/Yubico\ Authenticator.app/Contents/MacOS/yubioath $argv
end

function totp -a command -a filter -d "Get/List totp from Yubikey"

  set -l resp (yubioath -r "Yubikey NEO" show $filter ^ /dev/null)

  if [ $command = "list" ]

    for line in $resp
      echo $line | gsed -e 's/\(.*\) [0-9]*/\1/'
    end

  else if [ $command = "get" ]

    if test (count $resp) -ne 1
      echo "Error: Returned more than one totp!"
      return 2
    end

    echo $resp | gsed -e 's/.* \([0-9]*\)/\1/' | tr -d \n | pbcopy
  end
end
