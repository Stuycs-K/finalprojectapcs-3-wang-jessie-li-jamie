public class DartTrap extends Tile {
  
  public DartTrap(int x, int y){
    super(x, y, 255);
  }
  
  //add projectile
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
    if (rotation == 0){
      //bottom
    } else if (rotation == 90){
      //left
    } else if (rotation == 180){
      //top 
    } else if (rotation == 270){
      //right
    }
  }
  
  
}
