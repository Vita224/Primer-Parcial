void setup() {
  size(500, 500);
  background(200);
}

void draw() {
  fill(random(255), random(255), random(255));
    ellipse(mouseX, mouseY, 40, 40);
    
}
