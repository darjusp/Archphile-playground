#!/bin/bash
killall bluealsa || true
killall bluealsa-aplay || true
systemctl start bluetooth.service
bluealsa -p a2dp-sink &

expect first.exp

bash create_trust.sh

killall bluealsa-aplay || true
killall bluealsa || true
systemctl stop bluetooth.service || true