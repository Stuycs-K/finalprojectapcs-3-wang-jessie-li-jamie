public class Point extends Tile{
  public Point(int x, int y){
    super(x, y, #FFFF00);
  }
  void render(){
    fill(c);
    noStroke();
    ellipse(position[0] + tileSize/2, position[1] + tileSize/2, tileSize * 0.3, tileSize * 0.3);
  }
  /*void playerContact(){
    if (checkContact(player.position.x, player.position.y, player.velocity.x, player.velocity.y)){
      player.score++;
      maze.grid.remove(this);
    }
  }*/
}
