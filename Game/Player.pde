public class Player{
  boolean alive;
  PVector position;
  PVector velocity;
  int score;
  int c;
  PImage[] runFrames;
  int currentFrame;
  int frameCounter;
  int frameDelay = 4;
  
  public Player(int x, int y) {
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    alive = true;
    score = 0;
    c = 255;
    PImage runSheet = loadImage("img/runSheet.png");
    int totalFrames = 14;
    int frameWidth = runSheet.width / totalFrames;
    int frameHeight = runSheet.height;
    runFrames = new PImage[totalFrames];
    for (int i=0; i<totalFrames; i++){
      runFrames[i] = runSheet.get(i*frameWidth, 0, frameWidth, frameHeight);
    }
    currentFrame = 0;
    frameCounter = 0;
  }
  
  void render() {
    if (velocity.mag()!=0){
      frameCounter++;
      if (frameCounter >= frameDelay){
        currentFrame = (currentFrame+1) % runFrames.length;
        frameCounter = 0;
      }
      image(runFrames[currentFrame], position.x, position.y);
    } else{
      image(runFrames[0], position.x, position.y);
    }
  }
  
  void move() {
    float nextX = position.x + velocity.x;
    float nextY = position.y + velocity.y;
    for (int i = 0; i < maze.grid.size(); i++) {
      Tile t = maze.grid.get(i);
      if (!t.type.equals("Darts") && !t.type.equals("Saw") && !t.type.equals("Point") && !t.type.equals("Spike") && !t.type.equals("End") && t.checkContact(nextX, nextY)) {
        velocity.set(0, 0);
        return;
      }
    }
    position.x = nextX;
    position.y = nextY;
  }
  
  void setVel(int x, int y) {
    if (velocity.mag() == 0) {
      velocity.set(x, y);
    }
  }
}
