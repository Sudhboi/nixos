function giterit () {
    cd $1
    notify-send -t 500 "$(git pull): $1"
}

read dir
while [[ "$dir" != "" ]]; do
    giterit $dir
    read dir
done

notify-send -t 1000 "Sync Complete!"
