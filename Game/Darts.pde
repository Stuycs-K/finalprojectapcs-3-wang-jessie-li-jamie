public class Darts extends Tile{
  PVector speed;
  boolean alive;
    
  public Darts(int x, int y, float xVel, float yVel){
    super(x, y, 255);
    alive = true;
    this.speed = 2;
  }
  
  void render() {
    if (alive) {
      circle(position[0],position[1],2);
    }
  }
  
   void playerContact() {
    if (checkContact(player.position.x, player.position.y, player.velocity.x, player.velocity.y)) {
      player.alive = false;
      player.c = color(100);
      }
  }
  
  void wallContact() {
    for (Tile t: Maze.gird) {
      if (checkContact(t.position[0], t.position[1], speed.x, speed.y))
      
  }
    
  
}
