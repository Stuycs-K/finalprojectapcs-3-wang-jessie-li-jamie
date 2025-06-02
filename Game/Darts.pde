
public class Darts extends Tile{
  PVector speed;
  int originalX;
  int originalY;
  int newX;
  int newY;
    
  public Darts(int x, int y){
    super(x, y, 255);
    type = "Darts";
    originalX = x;
    originalY = y;
  }
  
  void render() {
    if (drawMode && position[0] == originalX && position[1] == originalY) {
      if (rotation == 0){
          //bottom
         position[0] += tileSize/2;
         position[1] -= tileSize/2;
         speed = new PVector (0.0, -1.0);
        } else if (rotation == 90){
          //left
          position[0] = position[0] + tileSize + tileSize/2;
          position[1] += tileSize/2;
          speed = new PVector(1.0, 0.0);
        } else if (rotation == 180){
          //top 
         position[0] += tileSize/2;
         position[1] += tileSize + tileSize/2;
         speed = new PVector (0.0, 1.0);
        } else if (rotation == 270){
          //right
         position[0]-= tileSize/2;
         position[1] += tileSize/2;
         speed = new PVector (-1.0, 0.0);
        }
        newX = position[0];
        newY = position[1];
    } else {
      playerContact();
      wallContact();
      move();
    }
      fill(c);
      noStroke();
      circle(position[0],position[1],10);
  }
  
   void move() {
    position[0] += speed.x;
    position[1] += speed.y;
  }
  
   void playerContact() {
    if (player.position.x+20 > position[0]-10 && player.position.x < position[0]+10 && player.position.y + 20 > position[1]-10 && player.position.y < position[1]+10) {
      player.alive = false;
      player.c = color(100);
      maze.end = true;
      }
  }
  
  void wallContact() {
    for (Tile t: maze.grid) {
      if (!t.type.equals("Darts") && position[0]+10 > t.position[0] && position[0]-10 < t.position[0]+tileSize && position[1] + 10 > t.position[1] && position[1] - 10 < t.position[1]+tileSize) {
        position[0] = newX;
        position[1] = newY;
      }
    }   
  }
    
  
}
