#ifndef TRANSFORM_CLASS_H
#define TRANSFORM_CLASS_H

#include "common/config.h"

class Transform
{
public:
    glm::vec3 pos = glm::vec3(0.0f);
    glm::vec3 scale = glm::vec3(1.0f);

    glm::mat4 model()
    {
        return glm::translate(glm::scale(glm::mat4(1.0f), scale), pos);
    }
};

#endif