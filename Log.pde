class Log extends Rectangle{
  float speed;
  PImage sprite;
  
  Log(float x, float y, float w, float h, float s, PImage sprite){
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
    //fill(93, 59, 37); // Brown color for logs
    //rect(x, y, w, h);
    
    image(sprite, x, y, w, h);
  }

}
