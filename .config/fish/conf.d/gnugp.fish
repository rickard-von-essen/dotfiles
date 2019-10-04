#set -x KEYID 0xB7DB909C0672FC49
set -x KEYID 0x7C8F9BC8B2E6BB2A
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
