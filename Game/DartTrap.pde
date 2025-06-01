public class DartTrap extends Tile {
  ArrayList<Darts> lst;
  
  public DartTrap(int x, int y){
    super(x, y, 255);
  }
  
  //add projectile
  void addDarts() { 
    if (tick % 3 == 0 || drawMode) {
      if (rotation == 0){
        //bottom
       lst.add(new Darts(position[0] + tileSize/2, position[1] - tileSize/2, 0.0, -1.0));
      } else if (rotation == 90){
        //left
       lst.add(new Darts(position[0] + tileSize + tileSize/2, position[1] + tileSize/2, 1.0, 0.0));
      } else if (rotation == 180){
        //top 
       lst.add(new Darts(position[0] + tileSize/2, position[1] +tileSize + tileSize/2, 0.0, 1.0));
      } else if (rotation == 270){
        //right
       lst.add(new Darts(position[0] - tileSize - tileSize/2, position[1] + tileSize/2, -1.0, 0.0));
      }
    }
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
    addDarts();
    for (Darts dart : lst) {
      dart.render();
    }
  }
  
  
}
