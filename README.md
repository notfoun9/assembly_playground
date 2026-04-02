# Tetris — aarch64 Linux Assembly
A fully working Tetris clone written in aarch64 Linux assembly,
designed to run in a terminal.
Builds with a simple Makefile and intended as a minimal and fast demonstration
of low-level programming, game logic, and terminal I/O in assembly.

## Features
Full Tetris gameplay (piece spawn, gravity, collisions, line clears)
Terminal-based rendering (no external graphics libraries)
Responsive controls and rotation variants (including 180°)

## Build & run
Builds with a single `make` command
Runs as `./executables/main`

## Controls
**A** — move left  
**S** — move down (soft drop)  
**D** — move right  
**Space** — hard drop  
**J** — rotate counterclockwise ↺  
**K** — rotate clockwise ↻  
**L** — rotate 180°  
**Q** — quit  


## TODO
- Show the next piece in a small window
- Fancy "Game Over" message
- Way to choose initial difficulty
- Difficulty increase
