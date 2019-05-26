const int button = 2;
const int led_A = 3;
const int led_B = 4;
const int servo = 9;

int lastButtonState = LOW;

bool weg_A = true;

void setup() {
  pinMode(button, INPUT);
  pinMode(led_A, OUTPUT);
  pinMode(led_B, OUTPUT);
  pinMode(servo, OUTPUT);
}

void loop() {
  //button:
  int buttonState = digitalRead(button); 
  if (buttonState != lastButtonState) {
    lastButtonState = buttonState;
    if (buttonState == HIGH ) {
      if (weg_A) {
        weg_A = false;
        digitalWrite(led_A, LOW);
        digitalWrite(led_B, HIGH);
        analogWrite(servo, 60);        //min.PWM 60
        
      } else {
        weg_A = true;
        digitalWrite(led_A, HIGH);
        digitalWrite(led_B, LOW);
        analogWrite(servo, 240);      //max.PWM 240
      }
    }
  } 
}
