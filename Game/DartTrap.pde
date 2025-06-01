public class DartTrap extends Tile {
  
  public DartTrap(int x, int y){
    super(x, y, 255);
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
  }
  
  
}
