function clipcopy() {
    pbcopy < "${1:-/dev/stdin}"
}

function clippaste() {
    pbpaste
}
