public class Point{
  public Point(int x, int y){
    super(x, y, #FFFF00);
  }
  void render(){
    fill(c);
    noStroke();
    ellipse(position[0] + tileSize/2, position[1] + tileSize/2, tileSize * 0.6, tileSize * 0.6);
  }
