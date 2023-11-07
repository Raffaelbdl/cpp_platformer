#ifndef WIRED_SQUARE_CLASS_H
#define WIRED_SQUARE_CLASS_H

#include "common/config.h"
#include "common/VAO.h"
#include "common/VBO.h"
#include "common/Shader.h"

class WiredSquare
{
public:
    glm::vec3 min = glm::vec3(-0.5f, -0.5f, 0.0f);
    glm::vec3 max = glm::vec3(0.5f, 0.5f, 0.0f);

    std::vector<Vertex> lineVertices;
    VAO lineVAO;

    WiredSquare();
    WiredSquare(glm::vec3 _min, glm::vec3 _max);

    void drawLines(GLFWwindow *window, Shader &lineShader, glm::mat4 model, glm::vec3 color = glm::vec3(1.0f));

    void updateVertices();
};

#endif