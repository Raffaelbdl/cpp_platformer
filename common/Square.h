#ifndef SQUARE_CLASS_H
#define SQUARE_CLASS_H

#include "common/config.h"
#include "common/VAO.h"
#include "common/VBO.h"
#include "common/EBO.h"
#include "common/Texture.h"
#include "common/Collider.h"

class Square
{
public:
    glm::vec3 min = glm::vec3(-0.5f, -0.5f, 0.0f);
    glm::vec3 max = glm::vec3(0.5f, 0.5f, 0.0f);

    glm::vec3 white = glm::vec3(1.0f);
    std::vector<Vertex> vertices = {
        Vertex{glm::vec3(-0.5f, -0.5f, 0.0f), white, glm::vec2(0.0f, 0.0f)},
        Vertex{glm::vec3(-0.5f, 0.5f, 0.0f), white, glm::vec2(0.0f, 1.0f)},
        Vertex{glm::vec3(0.5f, 0.5f, 0.0f), white, glm::vec2(1.0f, 1.0f)},
        Vertex{glm::vec3(0.5f, -0.5f, 0.0f), white, glm::vec2(1.0f, 0.0f)},
    };
    std::vector<GLuint> faceIndices = {
        0, 2, 1,
        0, 3, 2};

    std::vector<Vertex> lineVertices;

    VAO faceVAO;
    VAO lineVAO;

    std::vector<Texture> textures;
    glm::vec3 normalizeScale;

    Collider col;

    Square(const char *texture = "textures/white.png");
    void drawLines(GLFWwindow *window, Shader &lineShader, glm::mat4 model, glm::vec3 color = glm::vec3(1.0f));
    void drawSquare(GLFWwindow *window, Shader &shader, glm::mat4 model, bool flipHor = false);
    void normalize(int windowWidth, int windowHeight);

    void updateVertices();
};

#endif