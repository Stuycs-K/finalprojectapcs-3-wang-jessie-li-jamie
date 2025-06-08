# Dev Log:

This document must be updated daily every time you finish a work session.

## Jamie Li

### 2025-05-22 - Prototype
Started and finished prototype.

### 2024-05-23 - Started Game
Got sugggestions + edited projects based on suggestion and create/started game files 

### 2024-05-26 - Created Tile and Player Classes
Created the basis for the tile and player classes. Also helped created the basis for the build mode for game.

### 2024-05-27 - Started Lava Class
Created lava class: constructors and methods.

### 2024-05-28 - Minor fixes + added more methods
Was absent in class today. Added checkContact method to tile, which is then utilized in playerContact in Spike and Tile classes. Added playerContact method to Lava class. Minor fixes to game.

### 2024-05-29 - Fixing contact methods + starting working on dartTrap/darts classes
Worked on inherited methods for checking player contact + started working on dartTrap/darts

### 2024-05-30 - Working on dart class + finshing up dartTrap
Finished up the basis of dartTrap + starting working in-depth with darts/figuring out how to check contact for walls/player + repeat darts

### 2024-05-31 - A lot of debugging + fixing wrong claculations + finishing up contact issues/checks
Fixed up contact issues (player and walls) with darts + added darts as a seperated item you can add on draw mode to remove the excess complexity need if a dart is called for each dartTrap created. Fixed up contact issues with lava. Figured out how to loop the darts w/o having to create new ones. Some other minor fixes.

### 2024-06-01 - Finished game basis + started on graphics
Updated the graphics for the tiles using assets found on itch.io (credit to be added). Added end class for the end tile that the player has to reach to finish the game. Add a toString method that formats every tile in grid so hard-coding the maze is not needed.

### 2024-06-02 - Created pre-established level + debugging darts
Added a pre-established level built using build mode. Finished debugging dart traps and darts. Minor edits to tile.

### 2024-06-03 - Added end tile + started pufferfish class
Added end tile class and graphics. Also started on making a new pufferfish obstacle class + graphics for it.

### 2024-06-04 - Finalized pufferfish class + started on saw class
Fixed up pufferfish class + added more methods (contact check debug). Started new saw obstacle class + saw animation.

### 2024-06-05 - Continued working on saw class
Implimented deques in saw to keep track of movements that would follow the same coordinates as the player given a certain range. Also added player contact method.

### 2024-06-06 - Debugging + finished up restart buttons
Fixed up restart button to actually restart upon click. Made a few debugging edits. Fixed up the pre-established level for it to be more playable.

### 2024-06-07 - Fixed movement issues saw + added keybind for invulnerability
Fixed up movement issues with saw and issues with the position upon restart. Added a 'i' keybind for invulnerability for demo purposes. Edited pre-established level to include saw and pufferfish.
