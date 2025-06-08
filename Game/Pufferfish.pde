public class Pufferfish extends Tile {
  PImage inflated, deflated;
  boolean isDeflated;
  
  public Pufferfish(int x, int y) {
    super(x,y,255);
    inflated = loadImage("img/inflatedPufferFish.png");
    deflated = loadImage("img/deflatedPufferfish.png");
    isDeflated = true;
    type = "Pufferfish";
  }
  
  void render() {
    fill(c);
    noStroke();
    playerContact();
    if (tick % 200 < 100) {
      isDeflated = false;
      image(inflated, position[0] - tileSize, position[1] - tileSize, 3 * tileSize, 3 * tileSize);
    } else {
      isDeflated = true;
      image(deflated, position[0], position[1], tileSize, tileSize);
    }
  }
  
  void playerContact(){
    if (!invulnerability) {
      if (!isDeflated && player.position.x+20 > position[0] - (3*tileSize) && player.position.x < position[0]+(3*tileSize) && player.position.y + 20 > position[1]- (3*tileSize) && player.position.y < position[1]+(3*tileSize)){
          player.alive = false;
          player.c = color(100);
          maze.end = true;
        } else if (isDeflated && checkContact(player.position.x, player.position.y)) {
          player.velocity.set(0, 0);
        }
    }
  }
}
