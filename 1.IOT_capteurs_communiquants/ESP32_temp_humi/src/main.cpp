
#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <PubSubClient.h>

// capteur temp //

#include <OneWire.h>
#include <DallasTemperature.h>

const int oneWireBus = 33;     
OneWire oneWire(oneWireBus);
DallasTemperature sensors(&oneWire);
//////////////////


const char* mqtt_server = "gaffe à pas laisser"; //mqtt server
const char* ssid = "les identifiants dans le git";
const char* password = "boulet";

#define LED 23
//capteur 
int capteur_humi = 32;
int humiValue = 0;

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE	(50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

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

  // Switch on the LED if an 1 was received as first character
  if ((char)payload[0] == 'O' && (char)payload[1] == 'N') {
    digitalWrite(LED, HIGH);   // Turn the LED on (Note that LOW is the voltage level
    // but actually the LED is on; this is because
    // it is active low on the ESP-01)
  } if ((char)payload[0] == 'O' && (char)payload[1] == 'F' && (char)payload[2] == 'F') {
    digitalWrite(LED, LOW);  // Turn the LED off by making the voltage HIGH
  }

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
      client.publish("Humi", "hello world");
      // ... and resubscribe
      client.subscribe("SUB/ESP/#");
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
  pinMode(LED, OUTPUT); 
  digitalWrite(LED, HIGH);    // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  

  unsigned long now = millis();
  if (now - lastMsg > 2000) {
    lastMsg = now;
    ++value;
    humiValue = analogRead(capteur_humi)*100/4095;
    snprintf (msg, MSG_BUFFER_SIZE, "%ld%", humiValue);
    Serial.print("Publish message: ");
    Serial.println(msg);
    client.publish("PUB/ESP/HUMIS/HUMI1", msg);
    sensors.requestTemperatures(); 
    float temperatureC = sensors.getTempCByIndex(0);
    snprintf (msg, MSG_BUFFER_SIZE, "%f%", temperatureC);
    Serial.print("Publish message: ");
    Serial.println(msg);
    client.publish("PUB/ESP/HUMIS/HUMI1", msg);

  }
}