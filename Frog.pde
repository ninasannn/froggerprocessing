class Frog extends Rectangle {
  PImage sprite;
  Log attached = null;
  
  Frog(float x, float y, float w, PImage sprite) {
    super(x, y, w, w);
    this.sprite = sprite;
  }
  
  void attach(Log log) {
    attached = log; // Attaches frog to the log
  }
  
  void update() {
    if (attached != null) {
      x += attached.speed; // Update frog's position based on attached log's speed
    }
    
    // Constrain frog's position within the screen boundaries
    x = constrain(x, 0, width - w);
  }
  
  void show() {
    // Draw the frog using inherited properties
    image(sprite, x, y, w, h);
  }
  
  void move(float xdir, float ydir) {
    x += xdir * grid;
    y += ydir * grid; 
  }
}
