public class Tile{ 
  int[] position;
  int tileSize;
  int c;
  int rotation;
  String type;
  PImage tile;
  
  public Tile(int x, int y, int c){
    position = new int[]{x,y};
    tileSize = 50; //to be changed w testing
    this.c = c;
    rotation = 0;
    type = "tile";
    tile = loadImage("img/tile.png");
  }
  
  void render() {
    fill(c);
    noStroke();
    image(tile,position[0],position[1], tileSize, tileSize);
    //square(position[0], position[1], tileSize);
  }
  
  boolean checkContact(float x, float y) {
    return (x+20 > position[0] && x < position[0]+tileSize && y + 20 > position[1] && y < position[1]+tileSize);
  }
}
