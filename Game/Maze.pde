public class Maze{
  ArrayList<Tile> grid;
  PImage endScreen;
  PImage youWin;
  boolean end = false;
  
  public Maze(){
    grid = new ArrayList<Tile>();
    endScreen = loadImage("img/endScreen.png");
    youWin = loadImage("img/youWin.png");
  }
  void render(){
    for (Tile t : grid){
      t.render();
    }
  }
  void endScreen(){
    fill(255);
    textSize(100);
    textAlign(CENTER);
    if (!player.alive) {
      image(endScreen, 0, 0, width, height);
    } else {
      image(youWin, 0, 0, width, height);
    }
    text("Score: "+player.score, width/2, height-100);
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
