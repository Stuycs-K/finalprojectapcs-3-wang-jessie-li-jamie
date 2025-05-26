Player player;
Maze maze;
boolean drawMode = false;

void setup(){
  size(1200, 900);
  maze = new Maze();
  player = new Player();
}

void draw(){
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
void keyPressed(){
  if (keyCode == UP){
    player.setVel(0, -1);
  } else if (keyCode == DOWN){
    player.setVel(0, 1);
  } else if (keyCode == LEFT){
    player.setVel(-1, 0);
  } else if (keyCode == RIGHT){
    player.setVel(1, 0);
  } else if (key == ' '){
    drawMode = !drawMode;
  }
}
