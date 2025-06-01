public class Lava extends Tile {
  float speed;
  
  public Lava() {
    super(0,height, #32CD32);
    speed = 0;
  }
  
  void render() {
    fill(c);
    noStroke();
    rect(0, height-speed, width, speed);
  }
  
  void rise(Maze maze) {
    if (speed < height && !maze.end) {
      speed++; 
    }
  }
  
  void playerContact() {
    if (player.position.y < position[1]) {
      player.alive = false;
      player.c = color(100);
    }
  }
}
