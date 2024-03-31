class Car extends Rectangle {
  float speed;
  
  Car(float x, float y, float w, float h, float s){
    super(x, y, w, h);
    speed = s;
  }
  
  void update() {
    x = x + speed;
    
    if (speed > 0 && x > width+grid) {
      x = -w-grid;
    } else if (speed < 0 && x < -w-grid) {
      x = width+grid;
    }
  }
  
  void show() {
    // random values for rgb
    float r = random(255);
    float g = random(255);
    float b = random(255);
    
    fill(r, g, b); // cars color
    rect(x, y, w, h);
  }

}
