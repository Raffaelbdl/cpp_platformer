#ifndef MESH_CLASS_H
#define MESH_CLASS_H

#include "config.h"

#include "common/VAO.h"
#include "common/VBO.h"
#include "common/EBO.h"
#include "common/Camera.h"
#include "common/Texture.h"
#include "common/Shader.h"

using namespace std;

class Mesh
{
public:
    std::vector<Vertex> vertices;
    std::vector<GLuint> indices;
    std::vector<Texture> textures;

    VAO VAO1;

    Mesh(std::vector<Vertex> &vertices, std::vector<GLuint> &indices, std::vector<Texture> &textures);

    void Draw(Shader &shader,
              glm::mat4 matrix = glm::mat4(1.0f),
              glm::vec3 translation = glm::vec3(0.0f, 0.0f, 0.0f),
              glm::quat rotation = glm::quat(1.0f, 0.0f, 0.0f, 0.0f),
              glm::vec3 scale = glm::vec3(1.0f, 1.0f, 1.0f));
};

#endif