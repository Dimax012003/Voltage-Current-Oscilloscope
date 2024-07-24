const int vol=A5;
const int cur=A0;
void setup() {
  // put your setup code here, to run once:
    pinMode(cur,INPUT);
    pinMode(vol,INPUT);
    Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  float voltage=0;
  float average=0;
  double av=0;

  for(int i=0;i<100;i++){
    double cur1=5*(double)analogRead(A0)/(double)1023;
    voltage=analogRead(vol)*5/1024;
    average=(cur1-2.5)/0.185;
    av=av+average/100;
  }
  Serial.println(voltage);
  Serial.println(av);
  delay(100);

}
