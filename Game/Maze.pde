public class Maze{
  ArrayList<Tile> grid;
  boolean end = false;
  
  public Maze(){
    grid = new ArrayList<Tile>();
  }
  void render(){
    for (Tile t : grid){
      t.render();
    }
  }
  void endScreen(){
    fill(255, 0, 0);
    textSize(40);
    textAlign(CENTER);
    text("You died!", width/2, height/2);
  }
}
