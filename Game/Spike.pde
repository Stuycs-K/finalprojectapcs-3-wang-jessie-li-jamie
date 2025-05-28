public class Spike extends Tile{
  public Spike(int x, int y){
    super(x, y, color(255, 0, 0));
  }
  void render(){
    fill(c);
    noStroke();
    if (rotation == 0){
      triangle(position[0], position[1] + tileSize, position[0] + tileSize/2, position[1], position[0] + tileSize, position[1] + tileSize);
    } else if (rotation == 90){
      triangle(position[0], position[1], position[0] + tileSize, position[1] + tileSize/2, position[0], position[1] + tileSize);
    } else if (rotation == 180){
      triangle(position[0], position[1], position[0] + tileSize/2, position[1] + tileSize, position[0] + tileSize, position[1]);
    } else if (rotation == 270){
      triangle(position[0] + tileSize, position[1], position[0] + tileSize, position[1] + tileSize, position[0], position[1] + tileSize/2);
    }
  }
  void playerContact(){
    if (player.position.x >= position[0] && player.position.x < position[0]+tileSize && player.position.y >= position[1] && player.position.y < position[1]+tileSize){
      player.alive = false;
      player.c = color(100);
      println("You died to a spike!");
    }
  }
}
