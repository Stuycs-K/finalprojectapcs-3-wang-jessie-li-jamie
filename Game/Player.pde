public class Player{
  boolean alive;
  PVector position;
  PVector velocity;
  int score;
  int c;
  
  public Player(int x, int y) {
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    alive = true;
    score = 0;
    c = 255;
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position.x, position.y, 20); //to be changed
  }
  
  void move() {
    position.add(velocity);
  }
  
  void setVel(int x, int y) {
    if (velocity.mag() == 0) {
      velocity.set(x, y);
    }
  }
}
