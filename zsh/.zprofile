# Add ssh keys
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add /home/epl/.ssh/epl_id_rsa
fi

# Apply pywal color theme
wal -R

# Start X server
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi


