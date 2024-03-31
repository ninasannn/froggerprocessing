class Log extends Car {
  
  Log(float x, float y, float w, float h, float s){
    super(x, y, w, h, s);
  }
  
  void show() {
    fill(93, 59, 37); // Brown color for logs
    rect(x, y, w, h);
  }

}
