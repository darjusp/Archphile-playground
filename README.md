# Archphile-playground
Some additions to RPI archphile distro

Automatic bluetooth pairing for bluez-alsa for audio stream to RPI. No need to have ssh connection for pairing and handling devices with 'bluetothctl'

Pin set to 1111, can be changed to any number in first.exp file

Procedure:
launch "bash autopair.sh"
scan for RPI bluetooth on your devices
Attempt to connect
Stream audio from the device

Troubleshooting:
- first connection can take more than one attempt
- connecting to Android phone succeeded. Connecting to Macbook 2010 - > NOT
