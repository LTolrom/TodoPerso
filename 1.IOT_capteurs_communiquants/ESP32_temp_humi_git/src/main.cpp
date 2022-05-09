
#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <PubSubClient.h>
#include <DHT.h>

        


const char* mqtt_server = ""; 
const char* ssid = "";
const char* password = "";

#define brocheDeBranchementDHT 33
#define typeDeDHT DHT22     
DHT dht(brocheDeBranchementDHT, typeDeDHT);

#define PIN_capteur_humi_soil 32

#define PIN_U_BAT 27

WiFiClient espClient;
PubSubClient client(espClient);

unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE	(50)
char msg[MSG_BUFFER_SIZE];

float tempC=0;
float humiValueSoil=0;
float humiValueAmb=0;
float uBat=0;
long timeMark=0;
long dt=0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "test-client";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("ESP/RECO", "hello world");
      // ... and resubscribe
      client.subscribe("IN_ESP");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
  pinMode(PIN_capteur_humi_soil, INPUT);
  pinMode(brocheDeBranchementDHT, INPUT); 
  pinMode(PIN_U_BAT, INPUT); 
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

void publish(float Value, char* topic){
  
  snprintf (msg, MSG_BUFFER_SIZE, "%ld%", Value);
  Serial.print(topic);
  Serial.print(": ");
  Serial.println(msg);
  client.publish(topic, msg);
  }


void loop() {
timeMark=millis();
if (!client.connected()) {
  reconnect();
  }
client.loop();

tempC=0;
humiValueSoil=0;
humiValueAmb=0;
uBat=0;

for (int i=0; i<4; i++){
  humiValueSoil =humiValueSoil + analogRead(PIN_capteur_humi_soil)*100/(4095*5);
  humiValueAmb =humiValueAmb + dht.readHumidity()/5;
  tempC = tempC + dht.readTemperature()/5;
  uBat=uBat +analogRead(PIN_U_BAT)/5;
  delay(1000); //vraiment nécessaire?
}
  publish(humiValueSoil,"ESP/HUMI/SOIL");
  publish(humiValueAmb,"ESP/HUMI/AMBIANT");
  publish(tempC,"ESP/TEMP");
  publish(uBat,"ESP/UBATTERIE"); //8v min
  dt=timeMark-millis();
  publish(dt,"ESP/time");
  esp_deep_sleep_start();
  esp_sleep_enable_timer_wakeup(5*60*1000-dt);


}
