function giterit() {
    (
        cd $1
        notify-send -t 500 "$(git pull): $1"
    ) &
}

nm-online >>/dev/null

while read -r dir && [[ -n "$dir" ]]; do
    giterit $dir
done
