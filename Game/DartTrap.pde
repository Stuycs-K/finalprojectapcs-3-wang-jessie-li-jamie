public class DartTrap extends Tile {
  
  public DartTrap(int x, int y){
    super(x, y, 255);
  }
  
  //add projectile
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
    if (tick % 3 == 0) {
      if (rotation == 0){
        //bottom
       maze.grid.add(new Darts(position[0] + tileSize/2, position[1] - tileSize/2, 0.0, -1.0));
      } else if (rotation == 90){
        //left
       maze.grid.add(new Darts(position[0] + tileSize + tileSize/2, position[1] + tileSize/2, 1.0, 0.0));
      } else if (rotation == 180){
        //top 
       maze.grid.add(new Darts(position[0] + tileSize/2, position[1] +tileSize + tileSize/2, 0.0, 1.0));
      } else if (rotation == 270){
        //right
       maze.grid.add(new Darts(position[0] - tileSize - tileSize/2, position[1] + tileSize/2, -1.0, 0.0));
      }
    }
  }
  
  
}
