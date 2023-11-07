#ifndef BOUNDS_CLASS_H
#define BOUNDS_CLASS_H

#include "config.h"
#include "common/Shader.h"
#include "common/Line.h"
class Bounds
{
public:
    glm::vec3 center = glm::vec3(0.0f);
    glm::vec2 halfExtents = glm::vec2(0.5f, 0.5f);

    Bounds();

    glm::vec3 min() { return center - glm::vec3(halfExtents, center.z); }
    glm::vec3 max() { return center + glm::vec3(halfExtents, center.z); }

    std::vector<Line> lines;
    void updateLines();
};

#endif