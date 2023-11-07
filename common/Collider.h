#ifndef COLLIDER_CLASS_H
#define COLLIDER_CLASS_H

#include "config.h"
#include "common/Shader.h"
#include "common/Bounds.h"
#include "common/Line.h"
#include "common/Outline.h"
#include "common/Transform.h"
#include "common/WiredSquare.h"

class Collider
{
public:
    glm::vec3 min = glm::vec3(-0.5f, -0.5f, 0.0f);
    glm::vec3 max = glm::vec3(0.5f, 0.5f, 0.0f);

    Transform transform;
    WiredSquare hitbox;

    glm::vec3 normalizeScale = glm::vec3(1.0f);

    Collider();

    void update_min_max(glm::vec3 _min, glm::vec3 _max);
    void update_transform(Transform transform);
    bool Collides(Collider other);

    void drawHitBox(GLFWwindow *window, Shader &lineShader, glm::vec3 color = glm::vec3(0.0f, 1.0f, 0.0f));
};
#endif