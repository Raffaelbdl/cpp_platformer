#ifndef CAMERA_CLASS_H
#define CAMERA_CLASS_H

#include "common/config.h"

#include "common/Shader.h"
#include "common/Character.h"

class Camera
{
public:
    glm::vec3 Position;
    glm::vec3 Orientation = glm::vec3(0.0f, 0.0f, -1.0f);
    glm::vec3 Up = glm::vec3(0.0f, 1.0f, 0.0f);
    glm::mat4 cameraMatrix = glm::mat4(1.0f);

    bool firstClick;

    int width;
    int height;

    float speed = 0.1f;
    float sensitivity = 100.0f;

    Camera(int width, int height);
    void updateMatrix(glm::vec3 position);
    void Matrix(Shader &Shader, const char *uniform);
    void Inputs(GLFWwindow *window);
};

#endif