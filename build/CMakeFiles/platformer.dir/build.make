# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build

# Include any dependencies generated for this target.
include CMakeFiles/platformer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/platformer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/platformer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/platformer.dir/flags.make

CMakeFiles/platformer.dir/main.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/main.cpp.o: ../main.cpp
CMakeFiles/platformer.dir/main.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/platformer.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/main.cpp.o -MF CMakeFiles/platformer.dir/main.cpp.o.d -o CMakeFiles/platformer.dir/main.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/main.cpp

CMakeFiles/platformer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/main.cpp > CMakeFiles/platformer.dir/main.cpp.i

CMakeFiles/platformer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/main.cpp -o CMakeFiles/platformer.dir/main.cpp.s

CMakeFiles/platformer.dir/common/config.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/config.cpp.o: ../common/config.cpp
CMakeFiles/platformer.dir/common/config.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/platformer.dir/common/config.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/config.cpp.o -MF CMakeFiles/platformer.dir/common/config.cpp.o.d -o CMakeFiles/platformer.dir/common/config.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/config.cpp

CMakeFiles/platformer.dir/common/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/config.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/config.cpp > CMakeFiles/platformer.dir/common/config.cpp.i

CMakeFiles/platformer.dir/common/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/config.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/config.cpp -o CMakeFiles/platformer.dir/common/config.cpp.s

CMakeFiles/platformer.dir/common/VAO.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/VAO.cpp.o: ../common/VAO.cpp
CMakeFiles/platformer.dir/common/VAO.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/platformer.dir/common/VAO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/VAO.cpp.o -MF CMakeFiles/platformer.dir/common/VAO.cpp.o.d -o CMakeFiles/platformer.dir/common/VAO.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VAO.cpp

CMakeFiles/platformer.dir/common/VAO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/VAO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VAO.cpp > CMakeFiles/platformer.dir/common/VAO.cpp.i

CMakeFiles/platformer.dir/common/VAO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/VAO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VAO.cpp -o CMakeFiles/platformer.dir/common/VAO.cpp.s

CMakeFiles/platformer.dir/common/VBO.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/VBO.cpp.o: ../common/VBO.cpp
CMakeFiles/platformer.dir/common/VBO.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/platformer.dir/common/VBO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/VBO.cpp.o -MF CMakeFiles/platformer.dir/common/VBO.cpp.o.d -o CMakeFiles/platformer.dir/common/VBO.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VBO.cpp

CMakeFiles/platformer.dir/common/VBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/VBO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VBO.cpp > CMakeFiles/platformer.dir/common/VBO.cpp.i

CMakeFiles/platformer.dir/common/VBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/VBO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/VBO.cpp -o CMakeFiles/platformer.dir/common/VBO.cpp.s

CMakeFiles/platformer.dir/common/EBO.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/EBO.cpp.o: ../common/EBO.cpp
CMakeFiles/platformer.dir/common/EBO.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/platformer.dir/common/EBO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/EBO.cpp.o -MF CMakeFiles/platformer.dir/common/EBO.cpp.o.d -o CMakeFiles/platformer.dir/common/EBO.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/EBO.cpp

CMakeFiles/platformer.dir/common/EBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/EBO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/EBO.cpp > CMakeFiles/platformer.dir/common/EBO.cpp.i

CMakeFiles/platformer.dir/common/EBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/EBO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/EBO.cpp -o CMakeFiles/platformer.dir/common/EBO.cpp.s

CMakeFiles/platformer.dir/common/Shader.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Shader.cpp.o: ../common/Shader.cpp
CMakeFiles/platformer.dir/common/Shader.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/platformer.dir/common/Shader.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Shader.cpp.o -MF CMakeFiles/platformer.dir/common/Shader.cpp.o.d -o CMakeFiles/platformer.dir/common/Shader.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Shader.cpp

CMakeFiles/platformer.dir/common/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Shader.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Shader.cpp > CMakeFiles/platformer.dir/common/Shader.cpp.i

CMakeFiles/platformer.dir/common/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Shader.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Shader.cpp -o CMakeFiles/platformer.dir/common/Shader.cpp.s

CMakeFiles/platformer.dir/common/Texture.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Texture.cpp.o: ../common/Texture.cpp
CMakeFiles/platformer.dir/common/Texture.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/platformer.dir/common/Texture.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Texture.cpp.o -MF CMakeFiles/platformer.dir/common/Texture.cpp.o.d -o CMakeFiles/platformer.dir/common/Texture.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Texture.cpp

CMakeFiles/platformer.dir/common/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Texture.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Texture.cpp > CMakeFiles/platformer.dir/common/Texture.cpp.i

CMakeFiles/platformer.dir/common/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Texture.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Texture.cpp -o CMakeFiles/platformer.dir/common/Texture.cpp.s

CMakeFiles/platformer.dir/common/stb.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/stb.cpp.o: ../common/stb.cpp
CMakeFiles/platformer.dir/common/stb.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/platformer.dir/common/stb.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/stb.cpp.o -MF CMakeFiles/platformer.dir/common/stb.cpp.o.d -o CMakeFiles/platformer.dir/common/stb.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/stb.cpp

CMakeFiles/platformer.dir/common/stb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/stb.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/stb.cpp > CMakeFiles/platformer.dir/common/stb.cpp.i

CMakeFiles/platformer.dir/common/stb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/stb.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/stb.cpp -o CMakeFiles/platformer.dir/common/stb.cpp.s

CMakeFiles/platformer.dir/common/Camera.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Camera.cpp.o: ../common/Camera.cpp
CMakeFiles/platformer.dir/common/Camera.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/platformer.dir/common/Camera.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Camera.cpp.o -MF CMakeFiles/platformer.dir/common/Camera.cpp.o.d -o CMakeFiles/platformer.dir/common/Camera.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Camera.cpp

CMakeFiles/platformer.dir/common/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Camera.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Camera.cpp > CMakeFiles/platformer.dir/common/Camera.cpp.i

CMakeFiles/platformer.dir/common/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Camera.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Camera.cpp -o CMakeFiles/platformer.dir/common/Camera.cpp.s

CMakeFiles/platformer.dir/common/Mesh.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Mesh.cpp.o: ../common/Mesh.cpp
CMakeFiles/platformer.dir/common/Mesh.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/platformer.dir/common/Mesh.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Mesh.cpp.o -MF CMakeFiles/platformer.dir/common/Mesh.cpp.o.d -o CMakeFiles/platformer.dir/common/Mesh.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Mesh.cpp

CMakeFiles/platformer.dir/common/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Mesh.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Mesh.cpp > CMakeFiles/platformer.dir/common/Mesh.cpp.i

CMakeFiles/platformer.dir/common/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Mesh.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Mesh.cpp -o CMakeFiles/platformer.dir/common/Mesh.cpp.s

CMakeFiles/platformer.dir/common/Character.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Character.cpp.o: ../common/Character.cpp
CMakeFiles/platformer.dir/common/Character.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/platformer.dir/common/Character.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Character.cpp.o -MF CMakeFiles/platformer.dir/common/Character.cpp.o.d -o CMakeFiles/platformer.dir/common/Character.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Character.cpp

CMakeFiles/platformer.dir/common/Character.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Character.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Character.cpp > CMakeFiles/platformer.dir/common/Character.cpp.i

CMakeFiles/platformer.dir/common/Character.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Character.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Character.cpp -o CMakeFiles/platformer.dir/common/Character.cpp.s

CMakeFiles/platformer.dir/common/Sprite.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Sprite.cpp.o: ../common/Sprite.cpp
CMakeFiles/platformer.dir/common/Sprite.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/platformer.dir/common/Sprite.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Sprite.cpp.o -MF CMakeFiles/platformer.dir/common/Sprite.cpp.o.d -o CMakeFiles/platformer.dir/common/Sprite.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Sprite.cpp

CMakeFiles/platformer.dir/common/Sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Sprite.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Sprite.cpp > CMakeFiles/platformer.dir/common/Sprite.cpp.i

CMakeFiles/platformer.dir/common/Sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Sprite.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Sprite.cpp -o CMakeFiles/platformer.dir/common/Sprite.cpp.s

CMakeFiles/platformer.dir/common/Collider.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Collider.cpp.o: ../common/Collider.cpp
CMakeFiles/platformer.dir/common/Collider.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/platformer.dir/common/Collider.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Collider.cpp.o -MF CMakeFiles/platformer.dir/common/Collider.cpp.o.d -o CMakeFiles/platformer.dir/common/Collider.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Collider.cpp

CMakeFiles/platformer.dir/common/Collider.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Collider.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Collider.cpp > CMakeFiles/platformer.dir/common/Collider.cpp.i

CMakeFiles/platformer.dir/common/Collider.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Collider.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Collider.cpp -o CMakeFiles/platformer.dir/common/Collider.cpp.s

CMakeFiles/platformer.dir/common/Bounds.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Bounds.cpp.o: ../common/Bounds.cpp
CMakeFiles/platformer.dir/common/Bounds.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/platformer.dir/common/Bounds.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Bounds.cpp.o -MF CMakeFiles/platformer.dir/common/Bounds.cpp.o.d -o CMakeFiles/platformer.dir/common/Bounds.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Bounds.cpp

CMakeFiles/platformer.dir/common/Bounds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Bounds.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Bounds.cpp > CMakeFiles/platformer.dir/common/Bounds.cpp.i

CMakeFiles/platformer.dir/common/Bounds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Bounds.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Bounds.cpp -o CMakeFiles/platformer.dir/common/Bounds.cpp.s

CMakeFiles/platformer.dir/common/Square.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/Square.cpp.o: ../common/Square.cpp
CMakeFiles/platformer.dir/common/Square.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/platformer.dir/common/Square.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/Square.cpp.o -MF CMakeFiles/platformer.dir/common/Square.cpp.o.d -o CMakeFiles/platformer.dir/common/Square.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Square.cpp

CMakeFiles/platformer.dir/common/Square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/Square.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Square.cpp > CMakeFiles/platformer.dir/common/Square.cpp.i

CMakeFiles/platformer.dir/common/Square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/Square.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/Square.cpp -o CMakeFiles/platformer.dir/common/Square.cpp.s

CMakeFiles/platformer.dir/common/WiredSquare.cpp.o: CMakeFiles/platformer.dir/flags.make
CMakeFiles/platformer.dir/common/WiredSquare.cpp.o: ../common/WiredSquare.cpp
CMakeFiles/platformer.dir/common/WiredSquare.cpp.o: CMakeFiles/platformer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/platformer.dir/common/WiredSquare.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/platformer.dir/common/WiredSquare.cpp.o -MF CMakeFiles/platformer.dir/common/WiredSquare.cpp.o.d -o CMakeFiles/platformer.dir/common/WiredSquare.cpp.o -c /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/WiredSquare.cpp

CMakeFiles/platformer.dir/common/WiredSquare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platformer.dir/common/WiredSquare.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/WiredSquare.cpp > CMakeFiles/platformer.dir/common/WiredSquare.cpp.i

CMakeFiles/platformer.dir/common/WiredSquare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platformer.dir/common/WiredSquare.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/common/WiredSquare.cpp -o CMakeFiles/platformer.dir/common/WiredSquare.cpp.s

# Object files for target platformer
platformer_OBJECTS = \
"CMakeFiles/platformer.dir/main.cpp.o" \
"CMakeFiles/platformer.dir/common/config.cpp.o" \
"CMakeFiles/platformer.dir/common/VAO.cpp.o" \
"CMakeFiles/platformer.dir/common/VBO.cpp.o" \
"CMakeFiles/platformer.dir/common/EBO.cpp.o" \
"CMakeFiles/platformer.dir/common/Shader.cpp.o" \
"CMakeFiles/platformer.dir/common/Texture.cpp.o" \
"CMakeFiles/platformer.dir/common/stb.cpp.o" \
"CMakeFiles/platformer.dir/common/Camera.cpp.o" \
"CMakeFiles/platformer.dir/common/Mesh.cpp.o" \
"CMakeFiles/platformer.dir/common/Character.cpp.o" \
"CMakeFiles/platformer.dir/common/Sprite.cpp.o" \
"CMakeFiles/platformer.dir/common/Collider.cpp.o" \
"CMakeFiles/platformer.dir/common/Bounds.cpp.o" \
"CMakeFiles/platformer.dir/common/Square.cpp.o" \
"CMakeFiles/platformer.dir/common/WiredSquare.cpp.o"

# External object files for target platformer
platformer_EXTERNAL_OBJECTS =

platformer: CMakeFiles/platformer.dir/main.cpp.o
platformer: CMakeFiles/platformer.dir/common/config.cpp.o
platformer: CMakeFiles/platformer.dir/common/VAO.cpp.o
platformer: CMakeFiles/platformer.dir/common/VBO.cpp.o
platformer: CMakeFiles/platformer.dir/common/EBO.cpp.o
platformer: CMakeFiles/platformer.dir/common/Shader.cpp.o
platformer: CMakeFiles/platformer.dir/common/Texture.cpp.o
platformer: CMakeFiles/platformer.dir/common/stb.cpp.o
platformer: CMakeFiles/platformer.dir/common/Camera.cpp.o
platformer: CMakeFiles/platformer.dir/common/Mesh.cpp.o
platformer: CMakeFiles/platformer.dir/common/Character.cpp.o
platformer: CMakeFiles/platformer.dir/common/Sprite.cpp.o
platformer: CMakeFiles/platformer.dir/common/Collider.cpp.o
platformer: CMakeFiles/platformer.dir/common/Bounds.cpp.o
platformer: CMakeFiles/platformer.dir/common/Square.cpp.o
platformer: CMakeFiles/platformer.dir/common/WiredSquare.cpp.o
platformer: CMakeFiles/platformer.dir/build.make
platformer: external/glfw-3.1.2/src/libglfw3.a
platformer: external/libGLEW_1130.a
platformer: external/glad/libglad.a
platformer: /usr/lib/x86_64-linux-gnu/librt.a
platformer: /usr/lib/x86_64-linux-gnu/libm.so
platformer: /usr/lib/x86_64-linux-gnu/libX11.so
platformer: /usr/lib/x86_64-linux-gnu/libXrandr.so
platformer: /usr/lib/x86_64-linux-gnu/libXinerama.so
platformer: /usr/lib/x86_64-linux-gnu/libXi.so
platformer: /usr/lib/x86_64-linux-gnu/libXcursor.so
platformer: /usr/lib/x86_64-linux-gnu/libGL.so
platformer: /usr/lib/x86_64-linux-gnu/librt.a
platformer: /usr/lib/x86_64-linux-gnu/libm.so
platformer: /usr/lib/x86_64-linux-gnu/libX11.so
platformer: /usr/lib/x86_64-linux-gnu/libXrandr.so
platformer: /usr/lib/x86_64-linux-gnu/libXinerama.so
platformer: /usr/lib/x86_64-linux-gnu/libXi.so
platformer: /usr/lib/x86_64-linux-gnu/libXcursor.so
platformer: /usr/lib/x86_64-linux-gnu/libGL.so
platformer: CMakeFiles/platformer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable platformer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platformer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/platformer.dir/build: platformer
.PHONY : CMakeFiles/platformer.dir/build

CMakeFiles/platformer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/platformer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/platformer.dir/clean

CMakeFiles/platformer.dir/depend:
	cd /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build /home/raffaelbdl/Documents/DEV-RESEARCH/cpp_platformer/build/CMakeFiles/platformer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/platformer.dir/depend
