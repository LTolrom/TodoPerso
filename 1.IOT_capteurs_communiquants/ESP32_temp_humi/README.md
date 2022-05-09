Dossier platformio pour injecter un .bin sur un ESP_32 dev kit v4

la dev kit peut s'alimenter par batterie sur le 3v3 avec une alim régulée (du LiPo ou LiFePo) ou sur le via le régulateur du V_IN (5 à 12v). Idéalement il faudrais privilégier le 3v3 (moins de perte) mais j'ai peur que sans régu ça se ressente, il faut que je fasse des testes pour voire une corrélation baisses de tension/valeurs et compenser le tout.

J'ai fabriqué un Shield home-made mais je n'ai pas de batterie pour aller sur le 3v3, je vais me contenter d'une pile E 9v sur le 5v car c'est ce que j'ai sous la main, ça permettra de me donner déja un ordre d'idée sur la consomation.

J'ai pour ce projet deux capteurs, un capteur d'humidité ambiante+température (DHT22) et le second humidité dans le sol(pas trouvé de référence je laisse le lien de la page).

Pour le récup des donnés on va se dire que c'est pour l'extérieur est que les valeurs de temp/humi varie lentement. On va partir sur une moyenne de 5 mesures sur 5 secondes toute les 5min.


Je code l'ESP en arduino(C++), l'arduino semble bien plus rapide que le MicroPython, la question qui se pose c'est l'impacte sur la consomation, si la prise de mesure se fait plus rapidement alors le capteur et l'ESP sont actif moins longtemps, d'après ce benchtest on aurait presque un rapport de 100 en faveur de l'arduino, on diviserait donc d'autant le temps  d'éveil, sur le long terme ça peut avoir son impact, ça peu être interessant de récup le temps d'execution sur le dashboard.

On aura donc en envoie de données: trois capteurs, un relevé de tension et un temps d'execution.