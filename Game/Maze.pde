public class Maze{
  ArrayList<Tile> grid;
  boolean end = false;
  
  public Maze(){
    grid = new ArrayList<Tile>();
      if (!drawMode) {
    Tile[] tempGrid = new Tile[]{new Darts(325,570), new Tile(100,750, #800080), new Tile(50,750, #800080), new Tile(50,700, #800080), new Tile(50,650, #800080), new Tile(50,600, #800080), new Tile(50,550, #800080), new Tile(50,500, #800080), new Tile(50,400, #800080), new Tile(100,400, #800080), new Tile(150,400, #800080), new Tile(200,400, #800080), new Tile(250,400, #800080), new Tile(250,350, #800080), new Tile(250,300, #800080), new Tile(250,250, #800080), new Tile(250,200, #800080), new Tile(150,750, #800080), new Tile(150,700, #800080), new Tile(150,650, #800080), new Tile(150,550, #800080), new Tile(150,600, #800080), new Tile(200,550, #800080), new Tile(250,550, #800080), new Tile(250,600, #800080), new Tile(250,650, #800080), new Tile(350,550, #800080), new Tile(400,550, #800080), new Tile(450,550, #800080), new Tile(350,450, #800080), new Tile(350,400, #800080), new Tile(350,350, #800080), new Tile(350,300, #800080), new Point(100,650), new Point(100,600), new Point(100,550), new Point(100,500), new Point(100,450), new Point(150,450), new Point(150,500), new Point(200,500), new Point(250,450), new Point(250,500), new Point(300,500), new Point(300,450), new Point(300,600), new Point(300,550), new Point(350,600), new Point(400,600), new Point(450,600), new DartTrap(50,450), new DartTrap(300,200), new Spike(300,650), new Spike(350,650), new Spike(400,650), new Spike(450,650), new Point(200,450), new Darts(301,475), new Point(300,400), new Point(300,350), new Point(300,300), new Point(300,250), new Tile(350,200, #800080), new Tile(400,200, #800080), new Tile(500,650, #800080), new Tile(550,650, #800080), new Tile(550,600, #800080), new Tile(550,550, #800080), new Tile(600,500, #800080), new Tile(650,500, #800080), new Tile(700,500, #800080), new Tile(750,500, #800080), new Tile(800,500, #800080), new Tile(850,500, #800080), new Tile(900,500, #800080), new Tile(950,500, #800080), new Tile(1000,500, #800080), new Tile(1050,500, #800080), new Tile(1100,500, #800080), new Tile(1100,450, #800080), new Tile(1100,400, #800080), new Tile(1100,350, #800080), new Tile(1100,300, #800080), new Tile(1100,250, #800080), new Tile(1100,200, #800080), new Tile(450,200, #800080), new Tile(450,250, #800080), new Tile(450,300, #800080), new Tile(450,350, #800080), new Tile(450,400, #800080), new Tile(450,450, #800080), new Tile(200,200, #800080), new Tile(150,200, #800080), new Tile(150,100, #800080), new Tile(150,50, #800080), new Tile(150,0, #800080), new Tile(200,0, #800080), new Tile(250,0, #800080), new Tile(300,0, #800080), new Tile(350,0, #800080), new Tile(400,0, #800080), new Tile(450,0, #800080), new Tile(550,400, #800080), new Tile(550,350, #800080), new Tile(550,300, #800080), new Tile(550,250, #800080), new Tile(550,200, #800080), new Tile(550,150, #800080), new Tile(550,100, #800080), new Tile(500,0, #800080), new Tile(550,50, #800080), new Tile(550,0, #800080), new Tile(500,100, #800080), new Tile(400,150, #800080), new Tile(300,100, #800080), new Tile(100,100, #800080), new Tile(0,100, #800080), new Tile(50,100, #800080), new Tile(100,250, #800080), new Tile(100,200, #800080), new Tile(100,300, #800080), new Tile(0,300, #800080), new Tile(0,250, #800080), new Tile(0,200, #800080), new Tile(0,150, #800080), new DartTrap(50,300), new Darts(75,261), new Point(50,250), new Point(50,200), new Point(50,150), new Point(350,150), new Point(450,150), new Point(500,150), new Point(450,100), new Point(450,50), new Point(500,50), new Point(350,100), new Point(350,50), new Point(400,50), new Point(300,50), new Point(250,50), new Point(200,50), new Point(200,100), new Point(200,150), new Point(250,150), new Point(300,150), new Point(100,150), new Point(150,150), new Tile(650,350, #800080), new Tile(750,350, #800080), new Tile(600,250, #800080), new Tile(650,250, #800080), new Tile(750,250, #800080), new Tile(800,250, #800080), new DartTrap(700,250), new Darts(725,490), new Tile(1050,350, #800080), new Tile(700,150, #800080), new Tile(750,150, #800080), new Tile(800,150, #800080), new Tile(850,150, #800080), new Tile(900,150, #800080), new Tile(950,150, #800080), new Tile(950,200, #800080), new Tile(1000,200, #800080), new Tile(1050,200, #800080), new Tile(1000,350, #800080), new Tile(600,550, #800080), new Point(500,200), new Point(500,250), new Point(500,300), new Point(500,350), new Point(500,400), new Point(500,450), new Point(350,250), new Point(400,250), new Point(400,300), new Point(400,350), new Point(400,400), new Point(400,450), new Point(350,500), new Point(400,500), new Point(450,500), new Point(500,500), new Point(500,550), new Point(500,600), new Point(550,500), new Point(550,450), new Point(600,450), new Point(650,450), new Point(700,450), new Point(750,450), new Point(800,450), new Point(850,450), new Point(900,450), new Point(950,450), new Point(1000,450), new Point(1050,450), new Point(1050,400), new Point(1000,400), new Point(950,400), new Point(900,400), new Point(850,400), new Point(800,400), new Point(750,400), new Point(700,400), new Point(650,400), new Point(600,400), new Point(600,350), new Point(600,300), new Point(650,300), new Point(700,300), new Point(750,300), new Point(800,300), new Point(850,300), new Point(900,300), new Point(950,300), new Point(1000,300), new Point(1050,300), new Point(1050,250), new Point(1000,250), new Point(950,250), new Point(900,250), new Point(850,250), new Point(850,350), new Point(900,200), new Point(850,200), new Point(800,200), new Point(750,200), new Point(700,200), new Point(650,200), new Tile(750,100, #800080), new Tile(600,0, #800080), new Spike(600,100), new Spike(600,150), new Tile(600,200, #800080), new Tile(650,0, #800080), new Tile(700,0, #800080), new Tile(600,50, #800080), new Tile(650,50, #800080), new Tile(750,0, #800080), new Tile(800,0, #800080), new Tile(850,0, #800080), new Tile(850,50, #800080), new Tile(900,50, #800080), new Tile(950,50, #800080), new Tile(1000,50, #800080), new Tile(1050,50, #800080), new Tile(1100,50, #800080), new Tile(1100,100, #800080), new End(1100,150), new Point(650,150), new Point(650,100), new Point(700,100), new Point(700,50), new Point(750,50), new Point(800,50), new Point(800,100), new Point(850,100), new Point(900,100), new Point(950,100), new Point(1000,100), new Point(1050,100), new Point(1000,150), new Point(1050,150)};
    for (Tile tile : tempGrid) {
      grid.add(tile);
    }
  }
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
      text("You died!", width/2, height/2);
    } else {
      text("You win!", width/2, height/2);
    }
    text("Score: "+player.score, width/2, height-600/2);
  }
  
  String toString() {
    String result = "";
    for (int i = 0; i < grid.size(); i++) {
      result += "new " + grid.get(i).type + "(" + grid.get(i).position[0] + "," + grid.get(i).position[1];
      if (grid.get(i).type.equals("Tile")) {
        result += ", #800080";
      }
      result += ")";
      if (i != grid.size()-1) {
        result += ", ";
      }
    }
    return result;
  }
}
