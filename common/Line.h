#ifndef LINE_CLASS_H
#define LINE_CLASS_H

#include "config.h"
#include "common/Shader.h"
#include "common/VAO.h"
#include "common/VBO.h"

class Line
{
    VAO vao;
    std::vector<Vertex> vertices;
    glm::vec3 startPoint;
    glm::vec3 endPoint;
    glm::mat4 MVP;
    glm::vec3 lineColor;

public:
    Line(glm::vec3 start, glm::vec3 end)
    {
        startPoint = start;
        endPoint = end;
        lineColor = glm::vec3(1, 1, 1);
        MVP = glm::mat4(1.0f);

        vertices = {
            Vertex{start, glm::vec3(1.0f, 1.0f, 1.0f), glm::vec2(0.0f, 0.0f)},
            Vertex{end, glm::vec3(1.0f, 1.0f, 1.0f), glm::vec2(0.0f, 0.0f)}};

        vao.Bind();
        VBO VBO(vertices);
        vao.LinkAttrib(VBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void *)0);
        vao.Unbind();
        VBO.Unbind();
    }

    int setMVP(glm::mat4 mvp)
    {
        MVP = mvp;
        return 1;
    }

    int setColor(glm::vec3 color)
    {
        lineColor = color;
        return 1;
    }

    int draw(Shader &shader)
    {
        shader.Activate();
        vao.Bind();

        glUniformMatrix4fv(glGetUniformLocation(shader.ID, "MVP"), 1, GL_FALSE, &MVP[0][0]);
        glUniform3fv(glGetUniformLocation(shader.ID, "color"), 1, &lineColor[0]);

        glDrawArrays(GL_LINES, 0, 2);
        return 1;
    }

    ~Line()
    {
        vao.Delete();
    }
};

#endif