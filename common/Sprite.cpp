#include "common/Sprite.h"

Sprite::Sprite(const char *spritepath, float scale)
{
    glm::vec3 white = glm::vec3(1.0f, 1.0f, 1.0f);
    vertices = {
        Vertex{glm::vec3(-0.5f, -0.5f, 0.0f), white, glm::vec2(0.0f, 0.0f)},
        Vertex{glm::vec3(-0.5f, 0.5f, 0.0f), white, glm::vec2(0.0f, 1.0f)},
        Vertex{glm::vec3(0.5f, 0.5f, 0.0f), white, glm::vec2(1.0f, 1.0f)},
        Vertex{glm::vec3(0.5f, -0.5f, 0.0f), white, glm::vec2(1.0f, 0.0f)},
    };
    indices = {
        0, 2, 1,
        0, 3, 2};

    VAO1.Bind();

    VBO VBO(vertices);
    EBO EBO(indices);

    VAO1.LinkAttrib(VBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);                   // Link VBO vertices to VAO1
    VAO1.LinkAttrib(VBO, 1, 3, GL_FLOAT, sizeof(Vertex), (void *)(3 * sizeof(float))); // Link VBO colors to VAO1
    VAO1.LinkAttrib(VBO, 2, 2, GL_FLOAT, sizeof(Vertex), (void *)(6 * sizeof(float))); // Link VBO textures to VAO1

    VAO1.Unbind();
    VBO.Unbind();
    EBO.Unbind();

    textures.push_back(Texture(spritepath, 0));

    Sprite::scale = scale;
}

void Sprite::Draw(GLFWwindow *window, Shader &shader, glm::mat4 model, bool flipHor)
{
    shader.Activate();
    VAO1.Bind();

    int width, height;
    glfwGetWindowSize(window, &width, &height);

    // View scale
    Normalize(width, height);
    model = glm::scale(model, normalizeScale);
    if (flipHor)
        model = glm::scale(model, glm::vec3(-1.0f, 1.0f, 1.0f));
    // Apply transform
    glUniformMatrix4fv(glGetUniformLocation(shader.ID, "model"), 1, GL_FALSE, glm::value_ptr(model));

    textures[0].Bind();
    textures[0].texUnit(shader, "tex0", 0);

    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
}

void Sprite::Normalize(int windowWidth, int windowHeight)
{
    float ratio = (float)windowHeight / windowWidth;
    normalizeScale = glm::vec3(ratio, 1.0f, 1.0f) * scale;
}