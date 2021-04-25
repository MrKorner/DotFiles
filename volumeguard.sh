#/bin/sh
while :
do
	volume="$(pacmd list-sinks|grep -A 15 '* index'| awk '/volume: front/{ print $5 }' | sed 's/[%|,]//g')"

	getdefaultsinkname() {
    	pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
	}

	if (($volume > 100)); then
		pactl -- set-sink-volume $(getdefaultsinkname) 100%
	fi
sleep 0.25
done
