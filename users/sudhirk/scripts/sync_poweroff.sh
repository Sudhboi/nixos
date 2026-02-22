function gitit () {
    cd $1
    git add .
    git commit -m "$(date) - Sync Commit"
    notify-send "$(git push)"
}

read dir
while [[ "$dir" != "" ]]; do
    gitit $dir
    read dir
done
