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
