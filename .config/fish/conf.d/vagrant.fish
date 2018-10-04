set -x PATH /opt/vagrant/bin $PATH
#set -x VAGRANT_DEFAULT_PROVIDER 'parallels'
set -x VAGRANT_DEFAULT_PROVIDER 'vmware_fusion'

function vssh
  vagrant ssh $argv
end

function vip
  vagrant ssh $argv[1] -c "ifconfig eth1 | sed -ne 's/.*inet addr:\(\S*\)\s*Bcast.*/\1/p'" -- -T ^ /dev/null
end

function vurl
  open "http://"(vip)"$argv[2]/$argv[1]"
end

function vurls
  open "https://"(vip)"$argv[2]/$argv[1]"
end
