public class Tile{ 
  int[] position;
  int tileSize;
  int c;
  int rotation;
  
  public Tile(int x, int y, int c){
    position = new int[]{x,y};
    tileSize = 10; //to be changed w testing
    this.c = c;
    rotation = 0;
  }
  
  void render() {
    fill(c);
    noStroke();
    if (rotation == 0){
      square(position[0], position[1], tileSize);
    } else if (rotation == 90){
      square(position[0]+tileSize, position[1], -tileSize);
    } else if (rotation == 180){
      square(position[0]+tileSize, position[1]+tileSize, -tileSize);
    } else if (rotation == 270){
      square(position[0], position[1]+tileSize, -tileSize);
    }
  }
  
  boolean checkContact() {
    if (player.position.x > 0 ) {
      return player.position.x > position[0];
    } else if (player.position.x < 0) {
      return player.position.x < position[0] + tileSize;
    }
    if (player.position.y > 0) {
      return player.position.y > position[1];
    } else if (player.position.y < 0) {
      return player.position.y < position[1]+ tileSize;
    }
    return false;
  }
  
  void playerContact() {
    if (checkContact()) {
        player.velocity.set(0,0);
      }
  }
}
