Player player;
//Maze maze;
boolean drawMode = false;
static int tile = 0;
static int spike = 1;
static int points = 2;
static int dartTrap = 3;
int item = tile;

//add grid to make things easier to build
void grid(){
  for (int i=0; i<(int)(height/10); i++){
    for (int j=0; j<(int)(width/10); j++){
      square(j*10, i*10, 10);
    }
  }
}

void setup(){
  size(1200, 900);
  background(0);
  maze = new Maze();
  player = new Player();
  lava = new Lava();
}

void mouseClicked() {
  //used to add items in build mode
  if (drawMode){
    int xcor = (mouseX/10)*10;
    int ycor = (mouseY/10)*10;
    if (item == tile){
      maze.grid.add(new Tile(xcor, ycor));
    } else if (item == spike){
      maze.grid.add(new Spike(xcor, ycor));
    }
    //adding more items later
  }
}

void keyPressed() {
  //change velocity
  if (keyCode == UP){
    player.setVel(0, -1);
  } else if (keyCode == DOWN){
    player.setVel(0, 1);
  } else if (keyCode == LEFT){
    player.setVel(-1, 0);
  } else if (keyCode == RIGHT){
    player.setVel(1, 0);
  //change between the game and build modes
  } else if (key == ' '){
    drawMode = !drawMode;
  //change items
  } else if (key == '0'){
    item = tile;
  } else if (key == '1'){
    item = spike;
  } else if (key == '2'){
    item = dartTrap;
  } else if (key == '3'){
    item = points;
  }
}

//everything goes here
void draw() {
  background(0);
  if (!drawMode){
    maze.render();
    player.move();
    player.render();
    lava.render();
    
    for (Tile tile : maze.grid){
      tile.render();
      tile.playerContact(player);
    }
    if (maze.end()){
      maze.endScreen();
    }
  } else{
    maze.render();
  }
}
