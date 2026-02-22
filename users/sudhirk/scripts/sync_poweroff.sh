function gitit () {
    (
        cd "$1"
        if (! git diff --quiet) || (! git diff --quiet --cached); then
            git add .
            git commit -m "$(date) - Sync Commit" >> "/home/sudhirk/.logs/$(basename "$1").log"
            git push >> "/home/sudhirk/.logs/$(basename "$1").log"
        fi
    ) &
}

while read -r dir && [[ -n "$dir" ]]; do
    gitit $dir
done

wait
poweroff
