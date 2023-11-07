# C++ Platformer

This is a learning project where I tried to learn C++ from zero and program a simple game engine in a single week.

![Gameplay](./resources/gameplay.gif)

This project includes 
- A graphical implementation :
    - Square for character sprite
    - WiredSquare for colliders
    
- A physical implementation :
    - Non oriented square colliders
    - Collision detection
    - Simulated gravity, with ground checking

# Build

This project was built using CMake on Linux.
After build, copy `./resources/shaders/` and `./resources/textures/` inside the `./build` directory before running the project.