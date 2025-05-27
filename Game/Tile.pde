public class Tile{ 
  int[] position;
  int tileSize;
  int c;
  
  public Tile(int x, int y){
    position = new int[]{x,y};
    tileSize = 10; //to be changed w testing
    c = 255;
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
  }
  
  void playerContact() {
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
