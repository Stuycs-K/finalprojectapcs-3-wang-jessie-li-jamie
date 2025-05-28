public class Lava extends Tile {
  float speed;
  
  public Lava(int x, int y) {
    super(x,y, #32CD32);
    speed = 0;
  }
  
  void render() {
    fill(c);
    noStroke();
    rect(0,0,width,speed);
  }
  
  void rise() {
    if (speed < height && !maze.end()) {
      speed++; 
    }
  }
}
