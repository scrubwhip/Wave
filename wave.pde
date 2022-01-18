float arcStart = radians(180);
float arcEnd = arcStart;
float maxArcEnd = TWO_PI;
float speed = PI/60;
float movement = 0.0;
void setup() {
  size(400, 200);
}

void draw() {
background(255);
int num = 40;
int d = 10;
noFill();
stroke(0, 150, 255);
while(num>= 0){
  arcEnd = map(sin(movement + (maxArcEnd / num * radians(100))), -1, 1, arcStart, maxArcEnd);
  arc(200, 200, d, d, arcStart, arcEnd);
  d += 10;
  num --;
}
movement += speed;
}
