#!/bin/bash

killall bluetoothctl || true
killall bluealsa-aplay || true
killall bluealsa || true
systemctl stop bluetooth.service || true