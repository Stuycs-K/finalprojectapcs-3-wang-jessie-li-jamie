public class Lava extends Tile {
  float speed;
  
  public Lava() {
    super(0,height, #32CD32);
    speed = 0;
  }
  
  void render() {
    fill(c);
    noStroke();
    rect(position[0],position[1],width,speed);
  }
  
  void rise(Maze maze) {
    if (speed < height && !maze.end()) {
      position[1]--;
      speed++; 
    }
  }
}
