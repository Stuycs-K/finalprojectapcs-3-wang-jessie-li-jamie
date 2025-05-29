public class DartTrap extends Tile {
  
  public DartTrap(int x, int y){
    super(x, y, 255);
  }
  
  void render() {
    fill(c);
    noStroke();
    if (rotation == 0){
      //bottom
      triangle(position[0], position[1] + tileSize, position[0] + tileSize/2, position[1], position[0] + tileSize, position[1] + tileSize);
    } else if (rotation == 90){
      //left
      triangle(position[0], position[1], position[0] + tileSize, position[1] + tileSize/2, position[0], position[1] + tileSize);
    } else if (rotation == 180){
      //top 
      triangle(position[0], position[1], position[0] + tileSize/2, position[1] + tileSize, position[0] + tileSize, position[1]);
    } else if (rotation == 270){
      //right
      triangle(position[0] + tileSize, position[1], position[0] + tileSize, position[1] + tileSize, position[0], position[1] + tileSize/2);
    }
  }
  
  
}
