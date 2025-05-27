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
    for (int j=0; i<(int)(width/10); j++){
      square(j*10, i*10, 10);
    }
  }
}

void setup(){
  size(1200, 900);
  background(0);
  maze = new Maze();
  player = new Player();
}

void mouseClicked() {
  //used to add items in build mode
  if 
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
  }
  //change items
}

//everything goes here
void draw() {
  background(0);
  if (!drawMode){
    maze.render();
    player.move();
    player.render();
    
    for (Tile tile : Maze.grid){
      if (tile.playerContact(player)){
        player.setVel(0,0);
      }
    }
    if (maze.end){
      maze.endScreen();
    }
  } else{
    maze.render();
  }
}
