#ifndef SPRITE_CLASS_H
#define SPRITE_CLASS_H

#include "common/config.h"

#include "common/VAO.h"
#include "common/VBO.h"
#include "common/EBO.h"
#include "common/Texture.h"
#include "common/Shader.h"

class Sprite
{
public:
    std::vector<Vertex> vertices;
    std::vector<GLuint> indices;
    std::vector<Texture> textures;

    float scale = 1.0f;
    glm::vec3 normalizeScale;

    VAO VAO1;
    Sprite(const char *spritepath, float scale = 1.0f);

    void Draw(GLFWwindow *window, Shader &shader, glm::mat4 model, bool flipHor = false);
    void Normalize(int windowWidth, int windowHeight);
};

#endif