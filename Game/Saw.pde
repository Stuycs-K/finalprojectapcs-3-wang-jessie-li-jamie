import java.util.ArrayDeque;
public class Saw extends Tile {
  ArrayDeque<int[]> movements;
  int range;
  int originalX;
  int originalY;
  
  public Saw(int x, int y) {
    super(x,y,255);
    range =  4 * tileSize;
    originalX = x;
    originalY = y;
    movements = new ArrayDeque<>();
    type = "Saw";
  }
  
  void render() {
    inRange();
    if (movements.size() != 0 && player.position.x > position[0] - range && player.position.x < position[0] + tileSize + range && tick%3 ==  0) {
      if ((position[0] == originalX && position[1] == originalY && player.position.y <= position[1] - range && player.position.y < position[1] + range) || !(position[0] == originalX && position[1] == originalY) && (player.position.y > position[1] - range && player.position.y < position[1] + range)) {
        int[] newPos = movements.removeLast();
        position[0] = newPos[0];
        position[1] = newPos[1];
      }
    }
    image(sawImg,position[0],position[1],tileSize, tileSize+1);
    playerContact();
  }
  
  void inRange() {
    if (position[0] == originalX && position[1] == originalY) {
      if (player.position.x > position[0] - range && player.position.x < position[0] + tileSize + range && player.position.y > position[1] - range && !(player.position.y > position[1] + tileSize)) {
        movements.add(new int[]{(int)(player.position.x), (int)(player.position.y)});
      }
    } else if (player.position.x > position[0] - range && player.position.x < position[0] + tileSize + range && player.position.y > position[1] - range && player.position.y < position[1] + range) {
      movements.add(new int[]{(int)(player.position.x), (int)(player.position.y)});
    }
  }
  
  void playerContact() {
    if (checkContact(player.position.x, player.position.y)){
      player.alive = false;
      player.c = color(100);
      maze.end = true;
    }
  }
}
