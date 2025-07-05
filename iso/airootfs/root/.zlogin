# Auto-start omarchy-install on first login
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec omarchy-install
fi