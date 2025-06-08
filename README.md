[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/YxXKqIeT)
# Project Description

Our project's goal is to recreate the game "Tomb of the Mask." It combines a maze with obstacles such as spikes, darts, and rising lava. Players travel in short bursts in one direction from wall to wall to navigate the maze, collect points, and avoid death. This game also includes a build mode, where an user can build their own maze to play.

# Intended usage:

Players will begin on the start page where they would have to option for build mode or play mode. 

Build mode allows you to build your own level on a blank grid and once you're done/want to test it out, use the spacebare to switch between build and play modes. The top left corner has a text box that tells you the type of tile and rotation of these tiles. Use 't' to switch between tiles (tile, spikes, dart trap, dart, pufferfish, saw, end tile, eraser) and 'r' to rotate (applied only to spikes, dart trap, dart). The player would click on the grid they would like to place a tile on. Player has a restart option upon death/winning that would keep the same grid, but grid is not saved once you go back to the menu.

In play mode, the user controls a character moving through a pre-made maze using the arrow keys. The objective is to collect points, make it to the end tile, and avoid any obstacle that could kill you as lava is continously rising from underneath. You can also switch to build mode to add/remove tiles to make the level easier. The top left text box keep track of the points + mode. Upon death/winning, there is a restart option that would reload the pre-made maze without any modifications the player may have made.

# Keybinds: 

| **Key** | **Purpose** |
| ------- | ----------- |
| Up | Moves player up until player hits a wall/obstacle |
| Down | Moves player down until player hits a wall/obstacle |
| Left | Moves player left until player hits a wall/obstacle |
| Right | Moves player right until player hits a wall/obstacle |
| r | Rotates the tiles (only applies to spikes, dart trap, dart): 0 (face up), 90 (face right), 180 (upside down), 270 (face left) |
| t | Change tiles (tile, spikes, dart trap, dart, pufferfish, saw, end tile, eraser) |
| d | Goes back to menu screen (*does not work when you go back and try to get back on play mode again once saw gets moving*) |
| i | Toggles invulnerability - can't die from obstacles |

# Obstacles: 

| **Tiles** | **Function** |
| --------- | ------------ |
| Tile | Stops the player, acts like a barrier |
| Spikes | Kill player upon contact |
| Dart Trap/Dart | Dart trap fires out darts at a constant rate that moves in a straight line and kills the player upon contact |
| Pufferfish | Defates and infates, defated pufferfish acts as a tile, but infated pufferfish will expand out to a 3x3 grid that will kill player upon contact |
| Saw | Remains in its original position until player gets in range of it, which then triggers it to follow the path of the player until death/end and kills player upon contact |
| End tile | Ends the game when player runs up against it |

# Video Link
https://drive.google.com/file/d/1Es3962_DKgq9Kn8TtRcrtPNHZczKUx2z/view 

  
