public class Spike extends Tile{
  PImage spikes1, spikes2, spikes3, spikes4;
  
  public Spike(int x, int y){
    super(x, y, 255);
    type = "spike";
    spikes1 = loadImage("img/spikes1.png");
    spikes2 = loadImage("img/spikes2.png");
    spikes3 = loadImage("img/spikes3.png");
    spikes4 = loadImage("img/spikes4.png");
  }
  void render(){
    fill(c);
    noStroke();
    if (rotation == 0){
      image(spikes1,position[0],position[1],tileSize,tileSize);
      //triangle(position[0], position[1] + tileSize, position[0] + tileSize/2, position[1], position[0] + tileSize, position[1] + tileSize);
    } else if (rotation == 90){
      image(spikes2,position[0],position[1],tileSize,tileSize);
      //triangle(position[0], position[1], position[0] + tileSize, position[1] + tileSize/2, position[0], position[1] + tileSize);
    } else if (rotation == 180){
      image(spikes3,position[0],position[1],tileSize,tileSize);
      //triangle(position[0], position[1], position[0] + tileSize/2, position[1] + tileSize, position[0] + tileSize, position[1]);
    } else if (rotation == 270){
      image(spikes4,position[0],position[1],tileSize,tileSize);
      //triangle(position[0] + tileSize, position[1], position[0] + tileSize, position[1] + tileSize, position[0], position[1] + tileSize/2);
    }
  }
  void playerContact(){
    if (checkContact(player.position.x, player.position.y)){
      player.alive = false;
      player.c = color(100);
      maze.end = true;
    }
  }
}
