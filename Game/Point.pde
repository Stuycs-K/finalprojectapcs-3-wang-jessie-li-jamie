public class Point extends Tile{
  PImage coin;
  
  public Point(int x, int y){
    super(x, y, #FFFF00);
    type = "point";
    coin = loadImage("img/coins.png");
  }
  void render(){
    fill(c);
    noStroke();
    image(coin, position[0] + tileSize/3 + 2, position[1] + tileSize/3 + 2, tileSize * 0.3, tileSize * 0.3);
    //ellipse(position[0] + tileSize/2, position[1] + tileSize/2, tileSize * 0.3, tileSize * 0.3);
  }
  void playerContact(){
    if (checkContact(player.position.x, player.position.y)) {
      player.score++;
      maze.grid.remove(this);
    }
  }
}
