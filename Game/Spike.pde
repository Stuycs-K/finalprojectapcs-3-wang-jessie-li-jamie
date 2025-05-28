public class Spike extends Tile{
  public Spikes(int x, int y){
    super(x, y);
    c = color(255, 0, 0);
  }
  void render(){
    fill(c);
    noStroke();
    triangle(position[0], position[1]+tileSize, position[0]+tileSize/2, position[1], position[0]+tileSize, position[1]+tileSize);
  }
  
