#include "common/Square.h"

Square::Square(const char *texture)
{
    textures.push_back(Texture(texture, 0));
}

void Square::drawSquare(GLFWwindow *window, Shader &shader, glm::mat4 model, bool flipHor)
{
    shader.Activate();
    faceVAO.Bind();

    VBO faceVBO(vertices);
    EBO faceEBO(faceIndices);

    faceVAO.LinkAttrib(faceVBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);                   // Link VBO vertices to VAO1
    faceVAO.LinkAttrib(faceVBO, 1, 3, GL_FLOAT, sizeof(Vertex), (void *)(3 * sizeof(float))); // Link VBO colors to VAO1
    faceVAO.LinkAttrib(faceVBO, 2, 2, GL_FLOAT, sizeof(Vertex), (void *)(6 * sizeof(float))); // Link VBO textures to VAO1

    int width, height;
    glfwGetWindowSize(window, &width, &height);
    normalize(width, height);

    // model = glm::scale(model, normalizeScale);
    if (flipHor)
        model = glm::scale(model, glm::vec3(-1.0f, 1.0f, 1.0f));

    textures[0].Bind();
    textures[0].texUnit(shader, "tex0", 0);

    glUniformMatrix4fv(glGetUniformLocation(shader.ID, "model"), 1, GL_FALSE, glm::value_ptr(model));
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

    faceVAO.Unbind();
    faceVBO.Unbind();
    faceEBO.Unbind();
}

void Square::drawLines(GLFWwindow *window, Shader &lineShader, glm::mat4 model, glm::vec3 color)
{

    lineShader.Activate();
    lineVAO.Bind();

    VBO lineVBO(lineVertices);

    lineVAO.LinkAttrib(lineVBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);

    int width, height;
    glfwGetWindowSize(window, &width, &height);
    normalize(width, height);

    // model = glm::scale(model, normalizeScale);

    glLineWidth(50.0f);

    glUniformMatrix4fv(glGetUniformLocation(lineShader.ID, "MVP"), 1, GL_FALSE, glm::value_ptr(model));
    glUniform3fv(glGetUniformLocation(lineShader.ID, "color"), 1, glm::value_ptr(color));
    glDrawArrays(GL_LINES, 0, 8);

    lineVAO.Unbind();
    lineVBO.Unbind();
}

void Square::normalize(int windowWidth, int windowHeight)
{
    float ratio = (float)windowHeight / windowWidth;
    normalizeScale = glm::vec3(ratio, 1.0f, 1.0f);
    col.normalizeScale = normalizeScale;
}

void Square::updateVertices()
{
    glm::vec3 w = glm::vec3(1.0f);
    vertices = {
        Vertex{glm::vec3(min.x, min.y, 0.0f), white, glm::vec2(0.0f, 0.0f)},
        Vertex{glm::vec3(min.x, max.y, 0.0f), white, glm::vec2(0.0f, 1.0f)},
        Vertex{glm::vec3(max.x, max.y, 0.0f), white, glm::vec2(1.0f, 1.0f)},
        Vertex{glm::vec3(max.x, min.y, 0.0f), white, glm::vec2(1.0f, 0.0f)},
    };
    lineVertices = {
        Vertex{glm::vec3(min.x, min.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(min.x, max.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(min.x, max.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(max.x, max.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(max.x, max.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(max.x, min.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(max.x, min.y, 0.0f), w, glm::vec2(0.0f)},
        Vertex{glm::vec3(min.x, min.y, 0.0f), w, glm::vec2(0.0f)}};
}