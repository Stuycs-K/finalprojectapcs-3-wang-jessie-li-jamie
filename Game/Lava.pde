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
  }
  
  void rise(Maze maze) {
    if (speed < height && !maze.end) {
      speed += 0.5; 
    } else if (speed <= player.position.y + 20) {
      maze.end = true;
      player.alive = false;
      player.c = color(100);
    }
  }
  
  void playerContact() {
    if (speed <= player.position.y){
      player.alive = false;
      player.c = color(100);
    }
  }
}
