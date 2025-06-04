import java.util.Deque;
public class Saw extends Tile {
  Deque movements;
  int range;
  int originalX;
  int originalY;
  
  public Saw(int x, int y) {
    super(x,y,255);
    range =  3 * tileSize;
    originalX = x;
    originalY = y;
  }
  
  void render() {
    image(sawImg,position[0],position[1],tileSize, tileSize+1);
  }
  
  void inRange() {
    if (position[0] == originalX && position[1] == originalY) { 
      if (player.position.x > position[0] - range && player.position.x < position[0] + range && player.position.y > position[1] - range && player.position.y < position[1] + range) {
      }
        
    }
  }
}
