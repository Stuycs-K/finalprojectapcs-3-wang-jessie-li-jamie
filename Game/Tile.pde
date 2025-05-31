public class Tile{ 
  int[] position;
  int tileSize;
  int c;
  int rotation;
  String type;
  
  public Tile(int x, int y, int c){
    position = new int[]{x,y};
    tileSize = 50; //to be changed w testing
    this.c = c;
    rotation = 0;
    type = "tile";
  }
  
  void render() {
    fill(c);
    noStroke();
    square(position[0], position[1], tileSize);
  }
  
  boolean checkContact(float x, float y /*float xVel, float yVel*/) {
    return (x+20 > position[0] && x < position[0]+tileSize && y + 20 > position[1] && y < position[1]+tileSize);
   /* if (xVel > 0 ) {
      return x > position[0];
    } else if (xVel < 0) {
      return x < position[0] + tileSize;
    }
    if (yVel > 0) {
      return y > position[1];
    } else if (yVel < 0) {
      return y < position[1]+ tileSize;
    }
    return false;*/
  }
  
  /*void playerContact() {
    if (checkContact(player.position.x, player.position.y, player.velocity.x, player.velocity.y)) {
        player.velocity.set(0,0);
      }
  }*/
  
 
}
