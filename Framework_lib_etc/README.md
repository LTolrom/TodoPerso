**Mosquitto:**
Mosquitto permet de créer facilement des broker MQTT.

install:

sudo apt install mosquitto
sudo apt-get install mosquitto-clients

commandes les + utilisées:

sudo systemctl start mosquitto
sudo systemctl stop mosquitto
sudo systemctl status mosquitto
sudo systemctl restart mosquitto

Je m'en sert pour monter le broker MQTT sur le raspberry pi3 que je mets en fonctionnement avec node-red.

**Node-red**
Node-red est une interface pour les divers protocoles de communications et permet aussi de creer des IHM.

install:
sudo npm install -g --unsafe-perm node-red
sudo npm install node-red-dashboard (dashboard)
sudo npm install node-red-contrib-xbee (xbee)
sudo npm install @mschaeffler/node-red-lora (loraWan)
sudo npm i node-red-node-serialport (port serie)

commandes les + utilisées:

node-red
