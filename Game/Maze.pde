public class Maze{
  ArrayList<Tile> grid;
  PImage endScreen;
  boolean end = false;
  
  public Maze(){
    grid = new ArrayList<Tile>();
    loadImage("img/endScreen.png");
  }
  void render(){
    for (Tile t : grid){
      t.render();
    }
  }
  void endScreen(){
    background(0);
    fill(255, 0, 0);
    textSize(40);
    textAlign(CENTER);
    if (!player.alive) {
      image(endScreen, 0, 0, width, height);
    } else {
      text("You win!", width/2, height/2);
    }
    text("Score: "+player.score, width/2, height-600/2);
  }
  
  String toString() {
    String result = "";
    for (int i = 0; i < grid.size(); i++) {
      result += "new " + grid.get(i).type + "(" ;
      if (grid.get(i).type.equals("Darts")) {
        result += ((Darts)grid.get(i)).originalX + "," + ((Darts)grid.get(i)).originalY;
      } else {
        result += grid.get(i).position[0] + "," + grid.get(i).position[1];
      }
      if (grid.get(i).type.equals("Tile")) {
        result += ", #800080";
      } else if (grid.get(i).type.equals("Spike") || grid.get(i).type.equals("DartTrap") || grid.get(i).type.equals("Darts")) {
        result += ", " + grid.get(i).rotation;
      }
      result += ")";
      if (i != grid.size()-1) {
        result += ", ";
      }
    }
    return result;
  }
}
