#ifndef VBO_CLASS_H
#define VBO_CLASS_H

#include "config.h"

struct Vertex
{
    glm::vec3 position;
    glm::vec3 color;
    glm::vec2 texUV;
};

class VBO
{
public:
    GLuint ID;
    VBO(std::vector<Vertex> &vertices);

    void Bind();
    void Unbind();
    void Delete();
};

#endif