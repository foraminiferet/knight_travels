# Knight's Travel

This project implements a solution for finding the shortest path for a knight on a chessboard using a breadth-first search (BFS) approach. The knight can move in an L-shape, and the goal is to determine the sequence of moves from a starting position to a target position.

## Overview

A knight in chess moves in an L-shape: two squares in one direction and then one square perpendicular, or one square in one direction and then two squares perpendicular. This project defines a class `Node` to represent each position of the knight, along with its parent node and visited positions. The main function, `knight_travels`, uses BFS to find the shortest path from a starting position to a target position on an 8x8 chessboard.

### Class: `Node`

- **Attributes**:
- `position`: The current position of the knight on the chessboard.
- `parent`: The parent node from which the knight arrived at the current position.
- `visited`: An array tracking all visited positions to avoid cycles.

- **Methods**:
- `initialize`: Sets up the node with its position, parent, and marks the current position as visited.
- `children_nodes`: Generates possible child nodes representing valid knight moves from the current position, ensuring no previously visited positions are included.

### Functions

- **`display_parent(node)`**: Recursively prints the path from the starting position to the current position.
- **`knight_travels(start_position, end_position)`**: The main function that initializes the search and displays the path once the target position is reached.

