$ cat ~/.local/bin/sway
#!/bin/bash
export XDG_CURRENT_DESKTOP=sway
[[ -e ~/.env ]] && . ~/.env

exec /usr/bin/sway "$@"
