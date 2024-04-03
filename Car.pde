class Car extends Rectangle {
  float speed;
  PImage sprite;
  
  Car(float x, float y, float w, float h, float s, PImage sprite){
    super(x, y, w, h);
    speed = s;
    this.sprite = sprite;
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
    //fill(167, 30, 35); // cars colors
    //rect(x, y, w, h);
    
    image(sprite, x, y, w, h);
  }

}
