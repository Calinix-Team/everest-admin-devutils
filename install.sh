#     _    ____  
#    / \  / ___|   Arghya Sarkar
#   / _ \ \___ \   https://github.com/arghyagod-coder
#  / ___ \ ___) |  https://github.com/Calinix-Team
# /_/   \_\____/   https://get.calinix.tech

rootuser () {
  if [[ "$EUID" = 0 ]]; then
    continue
  else
    echo "Please Run As Root"
    sleep 2
    exit
  fi
}

rootuser
chmod +x bin/*
cp bin/* /usr/local/bin/