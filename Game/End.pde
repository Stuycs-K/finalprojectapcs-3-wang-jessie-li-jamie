public class End extends Tile{
  
  public End(int x, int y) {
    super(x,y, 255);
    type = "end";
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
    playerContact();
  }
  
  void playerContact(){
    if (checkContact(player.position.x, player.position.y)){
      maze.end = true;
      player.setVel(0, 0);
    }
  }
  
}
