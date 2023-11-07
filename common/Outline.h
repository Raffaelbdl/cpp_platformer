#ifndef OUTLINE_CLASS_H
#define OUTLINE_CLASS_H

#include "common/config.h"
#include "common/Line.h"

class Outline
{
public:
    Line lines[4] = {
        Line(glm::vec3(-0.5f, -0.5f, 0.0f), glm::vec3(-0.5f, 0.5f, 0.0f)),
        Line(glm::vec3(-0.5f, 0.5f, 0.0f), glm::vec3(0.5f, 0.5f, 0.0f)),
        Line(glm::vec3(0.5f, 0.5f, 0.0f), glm::vec3(0.5f, -0.5f, 0.0f)),
        Line(glm::vec3(0.5f, -0.5f, 0.0f), glm::vec3(-0.5f, -0.5f, 0.0f))};

    glm::mat4 matrix = glm::mat4(1.0f);
    glm::vec3 pos = glm::vec3(0.0f);
    glm::vec3 scale = glm::vec3(1.0f);

    Outline()
    {
    }

    void updateBounds(glm::vec3 min, glm::vec3 max)
    {
        scale = glm::vec3(max.x - min.x, max.y - min.y, 1.0f);
        pos = glm::vec3((max.x + min.x) / 2.0f, (max.y + min.y) / 2.0f, 0.0f);
    }

    int draw(Shader &shader, unsigned int windowWidth, unsigned int windowHeight, glm::mat4 mvp)
    {
        glm::mat4 model = glm::translate(glm::scale(matrix, scale), pos);
        glm::vec3 windowScale = glm::vec3((float)windowHeight / windowWidth, 1.0f, 1.0f);
        model = glm::scale(model, windowScale);
        model = mvp * model;
        lines[0].setMVP(model);
        lines[1].setMVP(model);
        lines[2].setMVP(model);
        lines[3].setMVP(model);
        lines[0].draw(shader);
        lines[1].draw(shader);
        lines[2].draw(shader);
        lines[3].draw(shader);
        return 1;
    }
};

#endif