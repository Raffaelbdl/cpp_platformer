
#include "common/Bounds.h"

Bounds::Bounds()
{
}

void Bounds::updateLines()
{
    glm::vec3 min = Bounds::min();
    glm::vec3 max = Bounds::max();
    lines = std::vector<Line>{
        Line(glm::vec3(min.x, min.y, 0.0f), glm::vec3(min.x, max.y, 0.0f)),
        Line(glm::vec3(min.x, max.y, 0.0f), glm::vec3(max.x, max.y, 0.0f)),
        Line(glm::vec3(max.x, max.y, 0.0f), glm::vec3(max.x, min.y, 0.0f)),
        Line(glm::vec3(max.x, min.y, 0.0f), glm::vec3(min.x, min.y, 0.0f))};
}