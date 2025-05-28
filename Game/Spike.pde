public class Spike extends Tile{
  public Spike(int x, int y){
    super(x, y);
    c = color(255, 0, 0);
  }
  void render(){
    fill(c);
    noStroke();
    triangle(position[0], position[1]+tileSize, position[0]+tileSize/2, position[1], position[0]+tileSize, position[1]+tileSize);
  }
  void playerContact(){
    if (player.position.x >= position[0] && player.position.x < position[0]+tileSize && player.position.y >= position[1] && player.position.y < position[1]+tileSize){
      player.alive = false;
      player.c = color(100);
      println("You died to a spike!");
    }
  }
}
