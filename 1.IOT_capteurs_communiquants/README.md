Projet IOT:

OBJ: mettre en place un réseau de capteurs sans fils.

modalités:
    -polyvalent (Je veux que ça puisse servir pour n'importe quel capteur/µc/protocol de com)
    -Wireless(WIFI,BluetoothLE,xbee etc...)
    -stockage des datas (suivie sur le long terme)
    -dashboard ascesible sur le net
    -basse-consomation(il faut que les capteurs soit alimenté le plus longtemps possible sur batteri)

Hardwares utilisés:
    -Raspberry pi
    -Esp32

Frameworks:
    -Node-Red
    -Mosquitto
    -Platformio(Vscode)

Fonctionnement:
    les capteurs envoie leurs données sur le Broker MQTT hébergé par le Raspberry, celui-ci les stock et les traite puis les renvoie sur le net






