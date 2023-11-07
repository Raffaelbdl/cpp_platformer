cmake_minimum_required(VERSION 3.0.0)
project(platformer VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(platformer 
    main.cpp
    
    common/config.h
    common/config.cpp

    common/VAO.h
    common/VAO.cpp
    common/VBO.h
    common/VBO.cpp
    common/EBO.h
    common/EBO.cpp
    common/Shader.h
    common/Shader.cpp

    common/Texture.h
    common/Texture.cpp
    common/stb_image.h
    common/stb.cpp

    common/Camera.h
    common/Camera.cpp

    common/Mesh.h
    common/Mesh.cpp

    common/Character.h
    common/Character.cpp
    common/Sprite.h
    common/Sprite.cpp

    common/Collider.h
    common/Collider.cpp
    common/Bounds.h
    common/Bounds.cpp

    common/Line.h
    common/Outline.h

    common/Square.h
    common/Square.cpp
    common/WiredSquare.h
    common/WiredSquare.cpp

    common/Transform.h
)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

add_subdirectory (external)
include_directories(
    external/glew-1.13.0/include
    external/glfw-3.1.2/include
    external/glm-0.9.7.1/
    external/glad/include
    external/glad/src
    .
)

set(ALL_LIBS
    ${OPENGL_LIBRARY}
    glfw
    GLEW_1130
    glad
)

target_link_libraries(platformer ${ALL_LIBS})
add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)
