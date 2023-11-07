#include "common/WiredSquare.h"

WiredSquare::WiredSquare()
{
    updateVertices();
}
WiredSquare::WiredSquare(glm::vec3 _min, glm::vec3 _max)
{
    min = _min;
    max = _max;
    updateVertices();
}

void WiredSquare::drawLines(GLFWwindow *window, Shader &lineShader, glm::mat4 model, glm::vec3 color)
{
    lineShader.Activate();
    lineVAO.Bind();

    VBO lineVBO(lineVertices);

    lineVAO.LinkAttrib(lineVBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);

    // int width, height;
    // glfwGetWindowSize(window, &width, &height);
    // normalize(width, height);

    // model = glm::scale(model, normalizeScale);

    glLineWidth(50.0f);

    glUniformMatrix4fv(glGetUniformLocation(lineShader.ID, "MVP"), 1, GL_FALSE, glm::value_ptr(model));
    glUniform3fv(glGetUniformLocation(lineShader.ID, "color"), 1, glm::value_ptr(color));
    glDrawArrays(GL_LINES, 0, 8);

    lineVAO.Unbind();
    lineVBO.Unbind();
}

void WiredSquare::updateVertices()
{
    glm::vec3 w = glm::vec3(1.0f);
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
