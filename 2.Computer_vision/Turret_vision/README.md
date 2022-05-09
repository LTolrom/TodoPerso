Le but est de center une image sur un objet cible grâce à une tourelle double axe (pan/tilt) à l'aide de deux servo moteur

J'utilise deux servo moteur (le sg90 et le mg90s) et d'après leur datasheet:
1ms pulse for -90(ou 0) degree (LEFT)
1.5ms pulse for 0(ou 90) degree (MIDDLE)
2ms pulse for 90(ou 180) degree (RIGHT)

donc pour du 50hz (20ms)
duty cycle pour 0 degre = (1/20)*100 = 5%
duty cycle pour 90 degres = (1.5/20)*100 = 7.5% 
duty cycle pour 180 degres = (2/20)*100 = 10% 

ça c'est la théorie, en pratique les résultats ne corresponde pas
pour ma part j'ai évalué (approximativement) le 0° à 2.5% et le 180° à 12.5%

j'ai aussi un prbolème de pas, en effet les servo ont un pas de de 0.4% ce qui équivaut à environs 7 degrès ce qui est beaucoup trop pour avoir quelques chose de smooth et qui m'a obligé à agrandir la cible de centrage. j'ai retrouvé le même prbolème sur l'arduino donc le problème ne vient pas du PWM de la jetson, à l'occasion je me procurerais des servo de meilleurs qualitée.

![Gif turret vision](https://github.com/LTolrom/TodoPerso/blob/main/2.Computer_vision/Turret_vision/GIF_Turret_vision.gif)
