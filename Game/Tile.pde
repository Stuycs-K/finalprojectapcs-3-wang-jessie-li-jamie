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
  
  void playerContact(Player player) {
    if (player.position.x > 0 ) {
      if (player.position.x > position[0]) {
        player.velocity.set(0,0);
      }
    } else if (player.position.x < 0) {
      if (player.position.x < position[0] + tileSize) {
        player.velocity.set(0,0);
      }
    }
    if (player.position.y > 0) {
      if (player.position.y > position[1]) {
         player.velocity.set(0,0);
      }
    } else if (player.position.y < 0) {
      if (player.position.y < position[1]+ tileSize) {
         player.velocity.set(0,0);
      }
    }
  }
}
