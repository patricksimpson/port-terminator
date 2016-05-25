if [ -z "$1" ]; then
  printf 'What PORT would you like to terminate: '
  read port
else
  port=$1
fi

if [ $port ]; then

  output=$(lsof -i tcp:$port);
  lsof -i tcp:$port

  if [ ! -z "$output" ]; then
    read -p "Do you wish to terminate these programs? (Y/n)" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      lsof -t -i tcp:$port | xargs kill -9
      echo 'Hasta la vista'
    fi
  else
    echo 'Nothing to kill here...'
  fi
  echo 'Bye.'
  exit 1
fi
