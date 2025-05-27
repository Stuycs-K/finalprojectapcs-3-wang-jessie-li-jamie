public class Lava extends Tile {
  float speed;
  
  public Lava(int x, int y) {
    super(x,y, #32CD32);
    speed = 1;
  }
  
  void render() {
    fill(c);
    noStroke();
    rect(0,0,width,0);
  }
  
  void rise() {
   
  }
}
