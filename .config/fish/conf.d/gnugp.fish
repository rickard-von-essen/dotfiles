set -x KEYID 0xB7DB909C0672FC49
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (/usr/local/bin/gpgconf --list-dirs agent-ssh-socket)
/usr/local/bin/gpgconf --launch gpg-agent
