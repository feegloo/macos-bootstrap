# overshadow "touch" command - creates not only file, but whole path with directories (if not exist)
# https://stackoverflow.com/a/44959953
function touch() {
  /bin/mkdir -p "$(dirname "$1")/" && /usr/bin/touch "$1"
}
