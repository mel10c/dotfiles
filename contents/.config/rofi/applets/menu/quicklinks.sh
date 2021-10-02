#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/menu/style.sh)"

dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $dir/square/quicklinks.rasi"

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}

# Browser
if [[ -f /usr/bin/firefox ]]; then
	app="firefox"
elif [[ -f /usr/bin/chromium ]]; then
	app="chromium"
elif [[ -f /usr/bin/midori ]]; then
	app="midori"
else
	msg "No suitable web browser found!"
	exit 1
fi

# Links
google="🖅"
facebook="𝓔"
twitter="🅱"
github=""
mail=""
youtube=""

# Variable passed to rofi
options="$google\n$facebook\n$twitter\n$github\n$mail\n$youtube"
options="$github\n$mail\n$google\n$facebook\n$twitter\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  $app" -dmenu -selected-row 0)"

case $chosen in
    $google)
        $app https://markus.teach.cs.toronto.edu &
        ;;
    $facebook)
        $app https://app.crowdmark.com/student/courses &
        ;;
    $twitter)
        $app https://www.bilibili.com &
        ;;
    $github)
        $app https://www.github.com &
        ;;
    $mail)
        $app https://q.utoronto.ca/ &
        ;;
    $youtube)
        $app https://www.youtube.com &
        ;;
esac
