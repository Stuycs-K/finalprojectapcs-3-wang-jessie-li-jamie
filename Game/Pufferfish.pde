public class Pufferfish extends Tile {
  PImage inflated, deflated;
  
  public Pufferfish(int x, int y) {
    super(x,y,255);
    inflated = loadImage("img/inflatedPufferfish");
    deflated = loadImage("img/deflatedPufferfish");
  }
  
  void render() {
    fill(c);
    noStroke();
    if (tick % 5 == 0) {
      image(deflated, position[0], position[1], tileSize, tileSize);
    } else {
      image(inflated, position[0] - tileSize, position[1] - tileSize, 3 * tileSize, 3 * tileSize);
    }
  }
}
