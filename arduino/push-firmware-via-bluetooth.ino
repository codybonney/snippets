int resetPin = 6;

void setup() {
    Serial.begin(115200);
    pinMode(resetPin, OUTPUT);
    digitalWrite(resetPin, LOW);
}

void loop() {
    // Check if avrdude 5.11 is attempting to push new firmware to the device
    Serial.peek() == '0' ? downloadFirmware() : mainProgram();
    delay(100);
}

void mainProgram() {
    // main program goes here
}

void downloadFirmware() {
    for(int i=0; i<100; i++) {
        // wait up to 5 seconds for synchronization request from avrdude 5.11
        if(Serial.read() == '0' && Serial.read()==' ') {
            // send response to avrdude 5.11 to begin synchronization
            Serial.write(0x14);
            Serial.write(0x10);
            resetArduino();
        }
        delay(50);
    }
}

void resetArduino() {
    digitalWrite(resetPin, HIGH);
}