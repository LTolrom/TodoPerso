Configuration:

-Update & upgrade
    sudo apt-get update && sudo apt-get -y upgrade

-Install Jetson-stats (monitoring pour la jetson)
    sudo pip3 install jetson-stats

-install vsCode (deb arm64)
    https://code.visualstudio.com/download

-install pip3 et lib python
    sudo apt-get install -y --no-install-recommends \
        python3 \
        python3-setuptools \
        python3-pip \
        python3-dev

-install driver Raspi Cam
https://www.arducam.com/docs/camera-for-jetson-nano/mipi-camera-modules-for-jetson-nano/driver-installation/
https://www.arducam.com/docs/camera-for-jetson-nano/jetson-nano-xavier-nx-configuring-the-csi-connector-w-jetson-io
En profiter pour paraméter les pin 32 et 33 en PWM


