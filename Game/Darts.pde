public class Darts extends Tile{
  PVector speed;
  int originalX;
  int originalY;
    
  public Darts(int x, int y){
    super(x, y, 255);
    type = "dart";
    originalX = x;
    originalY = y;
  }
  
  void render() {
    int x = 0; 
    int y = 0;
    if (rotation == 0){
        //bottom
       x = position[0] + tileSize/2;
       y = position[1] - tileSize/2;
       speed = new PVector (0.0, -1.0);
      } else if (rotation == 90){
        //left
        x =position[0] + tileSize + tileSize/2;
        y = position[1] + tileSize/2;
        speed = new PVector(1.0, 0.0);
      } else if (rotation == 180){
        //top 
       x = position[0] + tileSize/2;
       y = position[1] +tileSize + tileSize/2;
       speed = new PVector (0.0, 1.0);
      } else if (rotation == 270){
        //right
       x = position[0]- tileSize/2;
       y = position[1] + tileSize/2;
       speed = new PVector (-1.0, 0.0);
      }
      fill(c);
      noStroke();
      circle(x,y,10);
      if (!drawMode) {
      move();
    }
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
  
  void wallContact() {
    for (Tile t: maze.grid) {
      if (position[0]+10 > t.position[0] && position[0] < t.position[0]+tileSize && position[1] + 20 > t.position[1] && position[1] < t.position[1]+tileSize) {
        position[0] = originalX;
        position[1] = originalY;
      }
    }   
  }
    
  
}
