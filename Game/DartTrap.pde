public class DartTrap extends Tile {
  PImage trap1,trap2,trap3,trap4;
  
  public DartTrap(int x, int y){
    super(x, y, 255);
    trap1 = loadImage("img/dartTrap1.png");
    trap2 = loadImage("img/dartTrap2.png");
    trap3 = loadImage("img/dartTrap3.png");
    trap4 = loadImage("img/dartTrap4.png");
    type = "DartTrap";
  }
  
  void render() {
    fill(c);
    noStroke();
    if (rotation == 0){
      image(trap1,position[0],position[1],tileSize,tileSize);
    } else if (rotation == 90){
      image(trap2,position[0],position[1],tileSize,tileSize);
    } else if (rotation == 180){
      image(trap3,position[0],position[1],tileSize,tileSize);
    } else if (rotation == 270){
      image(trap4,position[0],position[1],tileSize,tileSize);
    }
  }
  
  
}
