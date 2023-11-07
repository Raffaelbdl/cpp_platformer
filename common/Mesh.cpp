#include "Mesh.h"

Mesh::Mesh(std::vector<Vertex> &vertices, std::vector<GLuint> &indices, std::vector<Texture> &textures)
{
    Mesh::vertices = vertices;
    Mesh::indices = indices;
    Mesh::textures = textures;

    VAO1.Bind();

    VBO VBO(vertices);
    EBO EBO(indices);

    VAO1.LinkAttrib(VBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);                   // Link VBO vertices to VAO1
    VAO1.LinkAttrib(VBO, 1, 3, GL_FLOAT, sizeof(Vertex), (void *)(3 * sizeof(float))); // Link VBO colors to VAO1
    VAO1.LinkAttrib(VBO, 2, 2, GL_FLOAT, sizeof(Vertex), (void *)(6 * sizeof(float))); // Link VBO textures to VAO1

    VAO1.Unbind();
    VBO.Unbind();
    EBO.Unbind();
}

void Mesh::Draw(Shader &shader,
                glm::mat4 matrix,
                glm::vec3 translation,
                glm::quat rotation,
                glm::vec3 scale)
{
    shader.Activate();
    VAO1.Bind();

    unsigned int numTexs = 0;

    for (unsigned int i = 0; i < textures.size(); i++)
    {
        std::string num = std::to_string(numTexs++);
        textures[i].texUnit(shader, ("tex" + num).c_str(), i);
        textures[i].Bind();
    }
    // camera.Matrix(shader, "camMatrix");

    glDrawElements(GL_TRIANGLES, indices.size(), GL_UNSIGNED_INT, 0);
}