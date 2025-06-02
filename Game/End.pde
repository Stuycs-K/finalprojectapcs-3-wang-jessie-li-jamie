public class End extends Tile{
  PImage end;
  
  public End(int x, int y) {
    super(x,y, 255);
    type = "End";
    end = loadImage("img/end.png");
  }
  
  void render() {
    fill(c);
    noStroke();
    image(end,position[0], position[1], tileSize, tileSize);
    //square(position[0], position[1], tileSize);
    playerContact();
  }
  
  void playerContact(){
    if (checkContact(player.position.x, player.position.y)){
      maze.end = true;
      player.setVel(0, 0);
    }
  }
  
}
