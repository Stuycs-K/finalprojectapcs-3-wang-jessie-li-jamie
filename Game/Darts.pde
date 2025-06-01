public class Darts extends Tile{
  PVector speed;
  boolean alive;
    
  public Darts(int x, int y, float xVel, float yVel){
    super(x, y, 255);
    alive = true;
    speed = new PVector(xVel,yVel);
    type = "dart";
  }
  
  void render() {
    if (alive) {
      move();
      fill(c);
      noStroke();
      circle(position[0],position[1],2);
    }
    println("rendering");
  }
  
   void move() {
    position[0] += speed.x;
    position[1] += speed.y;
  }
  
   /*void playerContact() {
    if (checkContact(player.position.x, player.position.y, player.velocity.x, player.velocity.y)) {
      player.alive = false;
      player.c = color(100);
      }
  }*/
  
  /*void wallContact() {
    for (Tile t: maze.grid) {
      if (checkContact(t.position[0] + tileSize, t.position[1] - tileSize, -1 * speed.x, -1 * speed.y)) {
        alive = false;
      }
    }   
  }*/
    
  
}
