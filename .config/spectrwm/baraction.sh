#!/bin/sh

print_bat() {
	bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
	bat_status=$(cat /sys/class/power_supply/BAT0/status)

	test $bat_capacity -le 100 && test $bat_capacity -gt 80 && bat_icon=""
	test $bat_capacity -le 80 && test $bat_capacity -gt 60 && bat_icon=""
	test $bat_capacity -le 60 && test $bat_capacity -gt 40 && bat_icon=""
	test $bat_capacity -le 40 && test $bat_capacity -gt 20 && bat_icon=""
	test $bat_capacity -le 20 && test $bat_capacity -ge 0 && bat_icon=""
	test $bat_status = "Charging" || $bat_status = "Full" && bat_icon=""
	test $bat_status = "Unknown" && bat_icon=""

	echo "$bat_icon $bat_capacity"
}

while :; do
	echo "$(print_bat)"
	sleep 1
done
