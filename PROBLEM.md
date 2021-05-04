# Toy Robot

You have been contracted to build a console-based simulation of a toy robot that accepts commands from the user and moves around a rectangular grid based on those commands.

The grid is of size N x M units and the robot can move 1 unit at a time.

The set of commands are as follows:

- `PLACE X,Y,D`: Place the robot on the grid at coordinates (X,Y), facing the direction D, which can be NORTH, EAST, SOUTH or WEST
- `LEFT`: Turn the robot left 90 degrees
- `RIGHT`: Turn the robot right 90 degress
- `FORWARD`: Move 1 unit in the direction that the robot is facing
- `REPORT`: Print the location of the robot and the direction it is facing (NORTH, EAST, SOUTH, WEST)

The robot is initially not placed on the grid and should ignore all commands until it receives a PLACE command.

The robot should also ignore any command that would cause it to fall outside the range of the grid.

## Coordinates

Coordinates start from 0,0, representing the northwest corner. You can think of the coordinates like (x,y) where x is the east-west axis and y is the north-south axis.

```
    W ------- E
    0 1 2 3 4 5
    ___________
N 0|
| 1|
| 2|  * <-- PLACE 1,2,SOUTH
| 3|
| 4|
S 5|
```

## Examples

Grid size 3x3:

```
PLACE 0,0,SOUTH
FORWARD
REPORT // output: 0,1,SOUTH
LEFT
REPORT // output: 0,1,EAST
REVERSE
REPORT // output: 0,1,EAST
FORWARD
REPORT // output: 1,1,EAST
```

* * *

Grid size: 3x3:

```
REPORT // output: Robot not placed on grid
```
