Player player;
Maze maze;
Lava lava;
boolean drawMode = false;
static int tile = 0;
static int spike = 1;
static int point = 2;
static int dartTrap = 3;
int item = tile;
int rotation = 0;
int tick = 0;

//add grid to make things easier to build
void grid(){
  stroke(255);
  for (int i=0; i<(int)(height/50); i++){
    for (int j=0; j<(int)(width/50); j++){
      square(j*50, i*50, 50);
    }
  }
}

void setup(){
  size(1200, 900);
  background(0);
  maze = new Maze();
  player = new Player(600,450);
  lava = new Lava();
}

void mouseClicked() {
  //used to add items in build mode
  if (drawMode){
    int xcor = (mouseX/50)*50;
    int ycor = (mouseY/50)*50;
    if (item == tile){
      Tile t = new Tile(xcor, ycor, #800080);
      t.rotation = rotation;
      maze.grid.add(t);
    } else if (item == spike){
      Spike s = new Spike(xcor, ycor);
      s.rotation = rotation;
      maze.grid.add(s);
    }
    //if (item == dartTrap){
      //DartTrap d = new DartTrap(xcor, ycor);
      //d.rotation = rotation;
      //maze.grid.add(d);
    //}
  }
}

void keyPressed() {
  //change velocity
  if (keyCode == UP){
    player.setVel(0, -10);
  } else if (keyCode == DOWN){
    player.setVel(0, 10);
  } else if (keyCode == LEFT){
    player.setVel(-10, 0);
  } else if (keyCode == RIGHT){
    player.setVel(10, 0);
  //change between the game and build modes
  } else if (key == ' '){
    drawMode = !drawMode;
  //change items
  } else if (key == 't'){
    item %= 4;
  } else if (key == 'r'){
    rotation = (rotation + 90)%360;
  }
}

//everything goes here
void draw() {
  tick++;
  background(0);
  fill(#00FF00);
  textSize(16);
  String modeText = "";
  if (drawMode){
    modeText = "Build!";
  } else{
    modeText = "Play!";
  } //text for mode
  
  String itemText = "";
  if (item == tile){
    itemText = "Tile";
  } else if (item == spike){
    itemText = "Spike";
  } else if (item == point){
    itemText = "Point";
  } else if (item == dartTrap){
    itemText = "Dart Trap";
  } //text for items
  text("Mode: " + modeText + "\nItem: " + itemText + "\nRotation: " + rotation, 10, 20);
  
  if (!drawMode){
    text("Score: " + player.score, 10, 80);
    maze.render();
    player.move();
    player.render();
    lava.render();
    
    for (Tile tile : maze.grid){
      tile.playerContact();
    }
    if (maze.end == true){
      maze.endScreen();
    }
  } else{
    grid();
    maze.render();
  }
}
