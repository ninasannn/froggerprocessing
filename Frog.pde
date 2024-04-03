class Frog extends Rectangle{
  
  Log attached = null;
  
  Frog(float x, float y, float w){
    super(x, y, w, w);
  }
  
  void attach(Log log) {
    attached = log;
  }
  
  void update() {
    if (attached != null) {
      frog.x += attached.speed;
    }
    
    
   frog.x = constrain(x, 0, width-w);
  }
  
  void show(){
    fill(95, 142, 72);
    rect(x, y, w, w);
  }
  
  void move(float xdir, float ydir){
    x += xdir * grid;
    y += ydir * grid;
  }
}
