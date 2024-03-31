class Frog extends Rectangle{
  
  Log attached = null;
  
  Frog(float x, float y, float w){
    super(x, y, w, w);
  }
  
  void attach(Log log) {
    attached = log; //attaches frog to the log
  }
  
  void update() {
    if (attached != null) {
      frog.x += attached.speed;
    }
    
    
   frog.x = constrain(x, 0, width-w);
  }
  
  void show(){
    fill(95, 142, 72); //gives frog its color
    rect(x, y, w, w);
  }
  
  void move(float xdir, float ydir){ //allows frog to move
    x += xdir * grid;
    y += ydir * grid; 
  }
}
