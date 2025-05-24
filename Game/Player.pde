public class Player{
  boolean alive;
  PVector position;
  PVector velocity;
  int score;
  
  void move() {
    position.add(velocity);
  }
  
}
