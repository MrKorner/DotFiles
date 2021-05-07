#!/bin/bash
amixer get Master | grep '%' | awk -F '[][]' '{print $2}';
function print {
    amixer get Master | grep '%' | awk -F '[][]' '{print $2}';
}
trap print RTMIN+1
while true; do
    sleep infinity & wait $!
done
