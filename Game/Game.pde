Player player;
//Maze maze;
static int game = 0;
static int build = 1;
int mode = 0;
static int tile = 0;
static int spike = 1;
static int points = 2;
static int dartTrap = 3;
int item = tile;

//add grid to make things easier to build
void grid() {
}

void setup() {
  size(1200, 900);
}

void mouseClicked() {
  //
}

void keyPressed() {
  //change between the game and build modes
  if (key == ' ') {
    mode++;
    mode%=2;
  }
  //change items
}

//everything goes here
void draw() {
}
