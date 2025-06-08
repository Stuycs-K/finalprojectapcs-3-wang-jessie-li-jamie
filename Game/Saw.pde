import java.util.*;
public class Saw extends Tile {
  ArrayDeque<int[]> movements;
  float range;
  int originalX;
  int originalY;
  boolean run;
  
  public Saw(int x, int y) {
    super(x,y,255);
    range = tileSize;
    originalX = x;
    originalY = y;
    movements = new ArrayDeque<>();
    type = "Saw";
    run = false;
  }
  
  void render() {
    inRange();
    if (movements.size() != 0) {
      if (tick % 3 == 0 && ((position[0] != originalX || position[1] != originalY) || (position[0] == originalX && position[1] == originalY && (player.position.x > position[0] + tileSize + range || player.position.x < position[0] - tileSize - range || player.position.y < position[1] - range - tileSize || player.position.y > position[1] + tileSize + range)))) {
        int[] newPos = movements.removeFirst();
        position = newPos;
      }
    }
    //println("new: " + Arrays.toString(position));
    image(sawImg,position[0],position[1],tileSize, tileSize+1);
    playerContact();
  }
  
  void inRange() {
    checkCoor();
    if (run) {
      int[] newCoor = new int[]{((int)(player.position.x)/5)*5, ((int)(player.position.y)/20)*20};
      if (!contains(newCoor)) {
        movements.add(newCoor);
      }
    }
  }
  
  void playerContact() {
    if (!invulnerability) {
      if (checkContact(player.position.x, player.position.y)){
        player.alive = false;
        player.c = color(100);
        maze.end = true;
      }
    }
  }
  
  void checkCoor() {
    if (!run && ((player.position.x >= position[0] - tileSize - range && player.position.x <= position[0] + tileSize + range) && (player.position.y <= position[1] + tileSize + range && player.position.y >= position[1] - range - tileSize))) {
      run = true;
    }
  }
  
  boolean contains(int[] lst) {
    if (movements.size() != 0) {
      for (int[] coor : movements) {
        if (lst[0] == coor[0] && lst[1] == coor[1]) {
          return true;
        }
      }
    }
    return false;
  }
}
