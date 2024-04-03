//WILL PROBABLY KEEP REFINING THIS GAME :D WE'LL SEE!!! 
 
 Frog frog;
Car[] cars;
Log[] logs;
PImage carSprite;
PImage truckSprite;
PImage logSprite;
PImage frogSprite;

float grid = 50; 



void resetGame() {
  frogSprite = loadImage("frog.png");
  
  frog = new Frog(width/2-grid/2, height-grid, grid, frogSprite);
  frog.attach(null);
}

void setup() {
  size(500, 500);
  cars = new Car[8];
  
  //sprites
  carSprite = loadImage("car.png");
  truckSprite = loadImage("truck.png");
  logSprite = loadImage("log.png");
  frogSprite = loadImage("frog.png");
  
  resetGame();
  
  int index = 0;
  //ROW 1
  for (int i = 0; i < 2; i++) {
    float x = i * 300;
    cars[index] = new Car(x, height-grid*2, grid*2, grid, 2, truckSprite);
    index++;
  }
  
  //ROW 2
  for (int i = 0; i < 2; i++) {
    float x = i * 200 + 150;
    cars[index] = new Car(x, height-grid*3, grid, grid, 3, carSprite);
    index++;
  }
  
  //ROW 3
  for (int i = 0; i < 4; i++) {
    float x = i * 150 + 25;
    cars[index] = new Car(x, height-grid*4, grid, grid, 1, carSprite);
    index++;
  }
  
  logs = new Log[9];
  
  //ROW 5
  index = 0;
  for (int i = 0; i < 2; i++) {
    float x = i * 250 + 100;
    logs[index] = new Log(x, height-grid*6, grid*2, grid, 2.3, logSprite);
    index++;
  }
  //ROW 6
  for (int i = 0; i < 3; i++) {
    float x = i * 200 + 30;
    logs[index] = new Log(x, height-grid*7, grid*2, grid, -1.3, logSprite);
    index++;
  }
  //ROW 7
  for (int i = 0; i < 4; i++) {
    float x = i * 400 + 50;
    logs[index] = new Log(x, height-grid*8, grid*2, grid, 0.5, logSprite);
    index++;
  }
}

void draw(){
  background(0);
  
  fill(73, 125, 167); //water behind the logs
  rect(0, height-grid*8, width, grid*3);
  
  fill(30); //road behind the car
  rect(0, grid*5, width, height-grid*6);
  
  fill(75);
  rect(0, 0, width, grid*2);
  rect(0, height-grid, width, grid);
  rect(0, height-grid*5, width, grid);
  frog.show();
  for (Car car : cars){ 
    car.show();
    car.update();
    if (frog.intersects(car)) {
      resetGame();
      //println("GAME OVER");
    }
  }
  
    for (Log log : logs){ 
      log.show();
      log.update();
    }
    
    if (frog.y < height-grid*5 && frog.y > grid*2 ) {
      boolean ok = false;
      for (Log log : logs) {
        if (frog.intersects(log)){
          ok = true;
          frog.attach(log);
        }
      }
      if (!ok) {
        resetGame();
      }
    } else {
      frog.attach(null);
    }
    
    frog.update();
    frog.show();
}

void keyPressed(){
  if (keyCode == UP){
    frog.move(0,-1);
  } else if (keyCode == DOWN){
    frog.move(0,1);
  } else if (keyCode == RIGHT){
    frog.move(1,0);
  } else if (keyCode == LEFT){
    frog.move(-1,0);
  }
  
}
