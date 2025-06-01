public class Lava extends Tile {
  float speed;
  
  public Lava() {
    super(0,height, #32CD32);
    speed = 0;
    type = "lava";
  }
  
  void render() {
    fill(c);
    noStroke();
    rect(0, height-speed, width, speed);
    if (height-speed >= player.position.y+20) {
      rise();
    }
    playerContact();
  }
  
  void rise() {
    if (speed < height && !maze.end) {
      speed += 0.5; 
    }
  }
  
  void playerContact() {
    if (height-speed <= player.position.y+20){
      player.alive = false;
      player.c = color(100);
    }
  }
}
