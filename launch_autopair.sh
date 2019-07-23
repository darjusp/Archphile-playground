#!/bin/bash
killall alsa || true
killall bluealsa || true
systemctl start bluetooth.service
bluealsa -p a2dp-sink &

expect first.exp
