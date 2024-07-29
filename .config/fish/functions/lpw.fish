function lpw -d "Get SSH or SSO password into clipboard" -a ssh_or_sso
  if test -z "$ssh_or_sso"
    echo "Usage: lpw [ssh|sso]"
  else
    switch $ssh_or_sso
      case "ssh"
        # lpass show 'King SSH passphrase / sudo password' --password -c
        bw get password 0fca8eac-1e44-4bdf-b72e-af86009f6203 | wl-copy
      case "sso"
        # lpass show sso.king.com --password -c
        bw get password f4ea87e8-61e8-4121-a04f-af86009f6203 | wl-copy
      case '*'
        echo "Usage: lpw [ssh|sso]"
    end
  end
end
