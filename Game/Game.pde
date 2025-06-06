import gifAnimation.*;
Gif sawImg;
Player player;
Maze maze;
Lava lava;
PImage startPage;
PImage startPage2;
int gameState = 0;
boolean drawMode = true;
static int tile = 0;
static int spike = 1;
static int point = 2;
static int dartTrap = 3;
static int dart = 4;
static int fish = 5;
static int saw = 6;
static int end = 7;
static int eraser = 8;
int item = tile;
int rotation = 0;
int tick = 0;
//boolean restart;
Tile[] tempGrid;

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
  //restart = false;
  sawImg = new Gif(this, "img/saw.gif");
  sawImg.loop();
  size(1200, 900);
  startPage = loadImage("img/startPage.png");
  startPage2 = loadImage("img/startPage2.png");
  background(0);
  maze = new Maze();
  player = new Player(100 + 17,700+17);
  lava = new Lava();
  if (drawMode) {
    maze.grid = new ArrayList<Tile>();
  }
}

void mouseClicked() {
  if (gameState == 0){
    if (mouseX >= 400 && mouseX <= 800 && mouseY >= 500 && mouseY <= 570){
      gameState = 1;
    }
  } else if(gameState == 1){
    if (mouseX >= 100 && mouseX <= 400 && mouseY >= 500 && mouseY <= 570){
      drawMode = false;
      gameState = 2;
      tempGrid = new Tile[]{new Tile(100,750, #800080), new Tile(50,750, #800080), new Tile(50,700, #800080), new Tile(50,650, #800080), new Tile(50,600, #800080), new Tile(50,550, #800080), new Tile(50,500, #800080), new Tile(50,400, #800080), new Tile(100,400, #800080), new Tile(150,400, #800080), new Tile(200,400, #800080), new Tile(250,400, #800080), new Tile(250,350, #800080), new Tile(250,300, #800080), new Tile(250,250, #800080), new Tile(250,200, #800080), new Tile(150,750, #800080), new Tile(150,700, #800080), new Tile(150,650, #800080), new Tile(150,550, #800080), new Tile(150,600, #800080), new Tile(200,550, #800080), new Tile(250,550, #800080), new Tile(250,600, #800080), new Tile(250,650, #800080), new Tile(350,550, #800080), new Tile(400,550, #800080), new Tile(450,550, #800080), new Tile(350,450, #800080), new Tile(350,400, #800080), new Tile(350,350, #800080), new Tile(350,300, #800080), new Point(100,650), new Point(100,600), new Point(100,550), new Point(100,500), new Point(100,450), new Point(150,450), new Point(150,500), new Point(200,500), new Point(250,450), new Point(250,500), new Point(300,500), new Point(300,450), new Point(300,600), new Point(300,550), new Point(350,600), new Point(400,600), new Point(450,600), new DartTrap(50,450,90), new Darts(50,450,90), new DartTrap(300,200,180), new Darts(300,200,180), new Spike(300,650,0), new Spike(350,650,0), new Spike(400,650,0), new Spike(450,650,0), new Point(200,450), new Point(300,400), new Point(300,350), new Point(300,300), new Point(300,250), new Tile(350,200, #800080), new Tile(400,200, #800080), new Tile(500,650, #800080), new Tile(550,650, #800080), new Tile(550,600, #800080), new Tile(550,550, #800080), new Tile(600,500, #800080), new Tile(650,500, #800080), new Tile(700,500, #800080), new Tile(750,500, #800080), new Tile(800,500, #800080), new Tile(850,500, #800080), new Tile(900,500, #800080), new Tile(950,500, #800080), new Tile(1000,500, #800080), new Tile(1050,500, #800080), new Tile(1100,500, #800080), new Tile(1100,450, #800080), new Tile(1100,400, #800080), new Tile(1100,350, #800080), new Tile(1100,300, #800080), new Tile(1100,250, #800080), new Tile(1100,200, #800080), new Tile(450,200, #800080), new Tile(450,250, #800080), new Tile(450,300, #800080), new Tile(450,350, #800080), new Tile(450,400, #800080), new Tile(450,450, #800080), new Tile(200,200, #800080), new Tile(150,200, #800080), new Tile(150,100, #800080), new Tile(150,50, #800080), new Tile(150,0, #800080), new Tile(200,0, #800080), new Tile(250,0, #800080), new Tile(300,0, #800080), new Tile(350,0, #800080), new Tile(400,0, #800080), new Tile(450,0, #800080), new Tile(550,400, #800080), new Tile(550,350, #800080), new Tile(550,300, #800080), new Tile(550,250, #800080), new Tile(550,200, #800080), new Tile(550,150, #800080), new Tile(550,100, #800080), new Tile(500,0, #800080), new Tile(550,50, #800080), new Tile(550,0, #800080), new Tile(500,100, #800080), new Tile(400,150, #800080), new Tile(300,100, #800080), new Tile(100,100, #800080), new Tile(0,100, #800080), new Tile(50,100, #800080), new Tile(100,250, #800080), new Tile(100,200, #800080), new Tile(100,300, #800080), new Tile(0,300, #800080), new Tile(0,250, #800080), new Tile(0,200, #800080), new Tile(0,150, #800080), new DartTrap(50,300,0), new Darts(50,300,0), new Point(50,250), new Point(50,200), new Point(50,150), new Point(350,150), new Point(450,150), new Point(500,150), new Point(450,100), new Point(450,50), new Tile(500,50,#800080), new Point(350,100), new Point(350,50), new Point(400,50), new Point(300,50), new Point(250,50), new Point(200,50), new Point(200,100), new Point(200,150), new Point(250,150), new Point(300,150), new Point(100,150), new Point(150,150), new Tile(650,350, #800080), new Tile(750,350, #800080), new Tile(600,250, #800080), new Tile(650,250, #800080), new Tile(750,250, #800080), new Tile(800,250, #800080), new DartTrap(700,250,180), new Darts(700,250,180), new Tile(1050,350, #800080), new Tile(700,150, #800080), new Tile(750,150, #800080), new Tile(800,150, #800080), new Tile(850,150, #800080), new Tile(900,150, #800080), new Tile(950,150, #800080), new Tile(950,200, #800080), new Tile(1000,200, #800080), new Tile(1050,200, #800080), new Tile(1000,350, #800080), new Tile(600,550, #800080), new Point(500,200), new Point(500,250), new Point(500,300), new Point(500,350), new Point(500,400), new Point(500,450), new Point(350,250), new Point(400,250), new Point(400,300), new Point(400,350), new Point(400,400), new Point(400,450), new Point(350,500), new Point(400,500), new Point(450,500), new Point(500,500), new Point(500,550), new Point(500,600), new Point(550,500), new Point(550,450), new Point(600,450), new Point(650,450), new Point(700,450), new Point(750,450), new Point(800,450), new Point(850,450), new Point(900,450), new Point(950,450), new Point(1000,450), new Point(1050,450), new Point(1050,400), new Point(1000,400), new Point(950,400), new Point(900,400), new Point(850,400), new Point(800,400), new Point(750,400), new Point(700,400), new Point(650,400), new Point(600,400), new Point(600,350), new Point(600,300), new Point(650,300), new Point(700,300), new Point(750,300), new Point(800,300), new Point(850,300), new Point(900,300), new Point(950,300), new Point(1000,300), new Point(1050,300), new Point(1050,250), new Point(1000,250), new Point(950,250), new Point(900,250), new Point(850,250), new Point(850,350), new Point(900,200), new Point(850,200), new Point(800,200), new Point(750,200), new Point(700,200), new Point(650,200), new Tile(750,100, #800080), new Tile(600,0, #800080), new Spike(600,100,90), new Spike(600,150,90), new Tile(600,200, #800080), new Tile(650,0, #800080), new Tile(700,0, #800080), new Tile(600,50, #800080), new Tile(650,50, #800080), new Tile(750,0, #800080), new Tile(800,0, #800080), new Tile(850,0, #800080), new Tile(850,50, #800080), new Tile(900,50, #800080), new Tile(950,50, #800080), new Tile(1000,50, #800080), new Tile(1050,50, #800080), new Tile(1100,50, #800080), new Tile(1100,100, #800080), new End(1100,150), new Point(650,150), new Point(650,100), new Point(700,100), new Point(700,50), new Point(750,50), new Point(800,50), new Point(800,100), new Point(850,100), new Point(900,100), new Point(950,100), new Point(1000,100), new Point(1050,100), new Point(1000,150), new Point(1050,150)};
      for (Tile tile : tempGrid) {
        maze.grid.add(tile);
      }
    } else if (mouseX >= 700 && mouseX <= 1000 && mouseY >= 500 && mouseY <= 570){
      drawMode = true;
      gameState = 2;
    }
  } else if (gameState == 2){
  //used to add items in build mode
    if (drawMode){
      int xcor = (mouseX/50)*50;
      int ycor = (mouseY/50)*50;
      if (item == tile){
        Tile t = new Tile(xcor, ycor, #800080);
        t.rotation = rotation;
        maze.grid.add(t);
      } else if (item == spike){
        Spike s = new Spike(xcor, ycor,rotation);
        s.rotation = rotation;
        maze.grid.add(s);
      } else if (item == point){
        Point p = new Point(xcor, ycor);
        maze.grid.add(p);
      } else if (item == fish){
        Pufferfish fish = new Pufferfish(xcor, ycor);
        maze.grid.add(fish);
      } else if (item == saw){
        Saw s = new Saw(xcor, ycor);
        maze.grid.add(s);
      } else if (item == dartTrap){
        DartTrap d = new DartTrap(xcor, ycor,rotation);
        d.rotation = rotation;
        maze.grid.add(d);
      } else if (item == dart){
        Darts d = new Darts(xcor, ycor,rotation);
        d.rotation = rotation;
        maze.grid.add(d);
      } else if (item == end){
        End e = new End(xcor, ycor);
        maze.grid.add(e);
      } else if (item == eraser){
        int indexToRemove = -1;
        for (int i=maze.grid.size()-1; i>=0; i--){
          Tile t = maze.grid.get(i);
          if (t.position[0] == xcor && t.position[1] == ycor && indexToRemove == -1){
            indexToRemove = i;
          }
        }
        if (indexToRemove != -1){
          maze.grid.remove(indexToRemove);
        }
      }
    }
  } /*else if (maze.end){
    restart = true;
  }*/
}

void keyPressed() {
  if (key == 'd') {
    println(maze.toString());
  }
  //change velocity
      if (keyCode == UP){
        player.setVel(0, -10);
      } else if (keyCode == DOWN){
        player.setVel(0, 10);
      } else if (keyCode == LEFT){
        player.setVel(-10, 0);
      } else if (keyCode == RIGHT){
        player.setVel(10, 0);
      }
  //change between the game and build modes
  if (key == ' '){
    drawMode = !drawMode;
  //change items
  } else if (key == 't'){
    item = (item+1) % 9;
  } else if (key == 'r'){
    rotation = (rotation + 90)%360;
  } 
}

//everything goes here
void draw() {
  if (gameState == 0){
    image(startPage, 0, 0, width, height);
  } else if (gameState == 1){
    image(startPage2, 0, 0, width, height);
  } else if (gameState == 2){
    tick++;
    background(0);
    fill(#00FF00);
    textSize(26);
    String modeText = "";
    if (drawMode){
      modeText = "Build!";
    } else{
      modeText = "Play!";
    } //text for mode
  
    String itemText = "";
    if (item == tile){
      itemText = "Tile";
    } else if (item == dart){
      itemText = "Dart";
    }else if (item == spike){
      itemText = "Spike";
    } else if (item == point){
      itemText = "Point";
    } else if (item == dartTrap){
      itemText = "Dart Trap";
    } else if (item == end){
      itemText = "End Tile";
    } else if (item == fish){
      itemText = "Pufferfish";
    } else if (item == saw){
      itemText = "Saw";
    } else if (item == eraser){
      itemText = "Eraser";
    }//text for items
    if (drawMode){
      fill(255);
      text("Mode: " + modeText, 10, 30);
      text("Item: " + itemText, 10, 60);
      text("Rotation: " + rotation, 10, 90);
      noFill();
      grid();
      maze.render();
      player.render();
    } else{
      fill(255);
      text("Mode: " + modeText, 10, 30);
      text("Score: " + player.score, 10, 60);
      maze.render();
      player.move();
      player.render();
      lava.render();
      for (int i=maze.grid.size()-1; i>=0; i--){
        Tile t = maze.grid.get(i);
        if (t.type.equals("Spike")){
          ((Spike)t).playerContact();
        } else if (t.type.equals("Point")){
          ((Point)t).playerContact();
        } else if (t.type.equals("Darts")){
          ((Darts)t).playerContact();
        }
      }
      if (maze.end){
        background(0);
        maze.endScreen();
        restartGame();
        //if (mouseX >= 400 && mouseX <= 800 && mouseY >= 500 && mouseY <= 570){
      }
    }
  }
}
void restartGame(){
  background(0);
  Tile[] tempGrid = new Tile[]{new Tile(100,750, #800080), new Tile(50,750, #800080), new Tile(50,700, #800080), new Tile(50,650, #800080), new Tile(50,600, #800080), new Tile(50,550, #800080), new Tile(50,500, #800080), new Tile(50,400, #800080), new Tile(100,400, #800080), new Tile(150,400, #800080), new Tile(200,400, #800080), new Tile(250,400, #800080), new Tile(250,350, #800080), new Tile(250,300, #800080), new Tile(250,250, #800080), new Tile(250,200, #800080), new Tile(150,750, #800080), new Tile(150,700, #800080), new Tile(150,650, #800080), new Tile(150,550, #800080), new Tile(150,600, #800080), new Tile(200,550, #800080), new Tile(250,550, #800080), new Tile(250,600, #800080), new Tile(250,650, #800080), new Tile(350,550, #800080), new Tile(400,550, #800080), new Tile(450,550, #800080), new Tile(350,450, #800080), new Tile(350,400, #800080), new Tile(350,350, #800080), new Tile(350,300, #800080), new Point(100,650), new Point(100,600), new Point(100,550), new Point(100,500), new Point(100,450), new Point(150,450), new Point(150,500), new Point(200,500), new Point(250,450), new Point(250,500), new Point(300,500), new Point(300,450), new Point(300,600), new Point(300,550), new Point(350,600), new Point(400,600), new Point(450,600), new DartTrap(50,450,90), new Darts(50,450,90), new DartTrap(300,200,180), new Darts(300,200,180), new Spike(300,650,0), new Spike(350,650,0), new Spike(400,650,0), new Spike(450,650,0), new Point(200,450), new Point(300,400), new Point(300,350), new Point(300,300), new Point(300,250), new Tile(350,200, #800080), new Tile(400,200, #800080), new Tile(500,650, #800080), new Tile(550,650, #800080), new Tile(550,600, #800080), new Tile(550,550, #800080), new Tile(600,500, #800080), new Tile(650,500, #800080), new Tile(700,500, #800080), new Tile(750,500, #800080), new Tile(800,500, #800080), new Tile(850,500, #800080), new Tile(900,500, #800080), new Tile(950,500, #800080), new Tile(1000,500, #800080), new Tile(1050,500, #800080), new Tile(1100,500, #800080), new Tile(1100,450, #800080), new Tile(1100,400, #800080), new Tile(1100,350, #800080), new Tile(1100,300, #800080), new Tile(1100,250, #800080), new Tile(1100,200, #800080), new Tile(450,200, #800080), new Tile(450,250, #800080), new Tile(450,300, #800080), new Tile(450,350, #800080), new Tile(450,400, #800080), new Tile(450,450, #800080), new Tile(200,200, #800080), new Tile(150,200, #800080), new Tile(150,100, #800080), new Tile(150,50, #800080), new Tile(150,0, #800080), new Tile(200,0, #800080), new Tile(250,0, #800080), new Tile(300,0, #800080), new Tile(350,0, #800080), new Tile(400,0, #800080), new Tile(450,0, #800080), new Tile(550,400, #800080), new Tile(550,350, #800080), new Tile(550,300, #800080), new Tile(550,250, #800080), new Tile(550,200, #800080), new Tile(550,150, #800080), new Tile(550,100, #800080), new Tile(500,0, #800080), new Tile(550,50, #800080), new Tile(550,0, #800080), new Tile(500,100, #800080), new Tile(400,150, #800080), new Tile(300,100, #800080), new Tile(100,100, #800080), new Tile(0,100, #800080), new Tile(50,100, #800080), new Tile(100,250, #800080), new Tile(100,200, #800080), new Tile(100,300, #800080), new Tile(0,300, #800080), new Tile(0,250, #800080), new Tile(0,200, #800080), new Tile(0,150, #800080), new DartTrap(50,300,0), new Darts(50,300,0), new Point(50,250), new Point(50,200), new Point(50,150), new Point(350,150), new Point(450,150), new Point(500,150), new Point(450,100), new Point(450,50), new Tile(500,50,#800080), new Point(350,100), new Point(350,50), new Point(400,50), new Point(300,50), new Point(250,50), new Point(200,50), new Point(200,100), new Point(200,150), new Point(250,150), new Point(300,150), new Point(100,150), new Point(150,150), new Tile(650,350, #800080), new Tile(750,350, #800080), new Tile(600,250, #800080), new Tile(650,250, #800080), new Tile(750,250, #800080), new Tile(800,250, #800080), new DartTrap(700,250,180), new Darts(700,250,180), new Tile(1050,350, #800080), new Tile(700,150, #800080), new Tile(750,150, #800080), new Tile(800,150, #800080), new Tile(850,150, #800080), new Tile(900,150, #800080), new Tile(950,150, #800080), new Tile(950,200, #800080), new Tile(1000,200, #800080), new Tile(1050,200, #800080), new Tile(1000,350, #800080), new Tile(600,550, #800080), new Point(500,200), new Point(500,250), new Point(500,300), new Point(500,350), new Point(500,400), new Point(500,450), new Point(350,250), new Point(400,250), new Point(400,300), new Point(400,350), new Point(400,400), new Point(400,450), new Point(350,500), new Point(400,500), new Point(450,500), new Point(500,500), new Point(500,550), new Point(500,600), new Point(550,500), new Point(550,450), new Point(600,450), new Point(650,450), new Point(700,450), new Point(750,450), new Point(800,450), new Point(850,450), new Point(900,450), new Point(950,450), new Point(1000,450), new Point(1050,450), new Point(1050,400), new Point(1000,400), new Point(950,400), new Point(900,400), new Point(850,400), new Point(800,400), new Point(750,400), new Point(700,400), new Point(650,400), new Point(600,400), new Point(600,350), new Point(600,300), new Point(650,300), new Point(700,300), new Point(750,300), new Point(800,300), new Point(850,300), new Point(900,300), new Point(950,300), new Point(1000,300), new Point(1050,300), new Point(1050,250), new Point(1000,250), new Point(950,250), new Point(900,250), new Point(850,250), new Point(850,350), new Point(900,200), new Point(850,200), new Point(800,200), new Point(750,200), new Point(700,200), new Point(650,200), new Tile(750,100, #800080), new Tile(600,0, #800080), new Spike(600,100,90), new Spike(600,150,90), new Tile(600,200, #800080), new Tile(650,0, #800080), new Tile(700,0, #800080), new Tile(600,50, #800080), new Tile(650,50, #800080), new Tile(750,0, #800080), new Tile(800,0, #800080), new Tile(850,0, #800080), new Tile(850,50, #800080), new Tile(900,50, #800080), new Tile(950,50, #800080), new Tile(1000,50, #800080), new Tile(1050,50, #800080), new Tile(1100,50, #800080), new Tile(1100,100, #800080), new End(1100,150), new Point(650,150), new Point(650,100), new Point(700,100), new Point(700,50), new Point(750,50), new Point(800,50), new Point(800,100), new Point(850,100), new Point(900,100), new Point(950,100), new Point(1000,100), new Point(1050,100), new Point(1000,150), new Point(1050,150)};
  for (Tile tile : tempGrid) {
    maze.grid.add(tile);
  }
  player = new Player(100 + 17, 700 + 17);
  lava = new Lava();
  maze.end = false;
  if (drawMode){
    maze.grid = new ArrayList<Tile>();
  }
}
