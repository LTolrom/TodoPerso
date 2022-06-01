Ayant fini les cours du M1 j'ai décidé de créer ce repo pour documenter et structurer les projets que je réalise pendant cette période.

Ça se passera donc principalement autour de trois setups dont vont découler plusieurs projets. Le premier en iot/capteurs communiquants, le second autour de la vision par ordinateur et le dernier sur les FPGA/SOC. Le but étant de balayer un maximum de sujets en faisant des projets qui m'intéresse. Les setups seront bien sur amenés à évoluer avec le temps.

**1.IOT capteurs communiquants :**

Basé sur le protocole MQTT avec un raspi 3 en tant que broker et des esp32 comme µc communiquant. Le but est de travailler avec plusieurs protocoles de communication sans fil, gérer les bases de données, créer une IHM et gérer l'alimentation des capteurs.


**2. Computer vision:**

Réalisé sur la jetson xavier NX (carte qui sera utilisée pendant le M2). Comme son nom l'indique, le but est de profiter des GPU de la jetson pour pratiquer la vision embarquée avec OpenCV et pytorch. Ce projet intègre aussi de la robotique avec l'utilisation de servo moteur, j'aimerais bien faire des essais avec ROS un peu plus tard sur ce setup.


**3.FPGA/SOC:**

Réalisé sur une Zybo Z7020, je suis très fan des FPGA pour leurs polyvalences, leurs efficiences (en terme de puissance, contrainte temporel et consommation énergétique) ainsi que de devoir travailler à un faible niveau d'abstraction et donc comprendre l'électronique numérique bit par bit. En fpga/VHDL je pense coder quelques machines à état et faire de la description de code déja existant (genre protocole de com série UART,i²C,SPI,CAN)

**[UPDATE]**
Je me concentre maintenant sur un projet académique, l'implémentation d'un algorithme d'un support vector machine en utilisant la méthode du gradient de descente stochastique. Ce projet ce base sur [cet](lopes2019.pdf) article. J'ai fait le choix de faire mon implémentation en high level synthesis (HLS), cela me permet d'expérimenter une méthode que je connais moins, et qui est particulièrement désignée pour faire du machine learning sur FPGA.


![PI+Jet+Zyb](https://user-images.githubusercontent.com/94114676/166684215-9302ad22-f1e8-4103-8958-482a12fbe210.jpg)
