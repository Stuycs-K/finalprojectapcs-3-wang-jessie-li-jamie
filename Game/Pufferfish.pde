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
    if (tick % 20 < 10) {
      isDeflated = false;
      image(inflated, position[0] - tileSize, position[1] - tileSize, 3 * tileSize, 3 * tileSize);
    } else {
      isDeflated = true;
      image(deflated, position[0], position[1], tileSize, tileSize);
    }
    playerContact();
  }
  
  void playerContact(){
    if (checkContact(player.position.x, player.position.y)){
      if (!isDeflated) {
        player.alive = false;
        player.c = color(100);
        maze.end = true;
      } else {
        player.velocity.set(0, 0);
      }
    }
  }
}
