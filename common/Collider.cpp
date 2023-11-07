#include "common/Collider.h"

bool overlap(glm::vec3 b1_min, glm::vec3 b1_max, glm::vec3 b2_min, glm::vec3 b2_max)
{
    if (b1_min.y < b2_max.y && b1_max.y > b2_min.y)
    {
        if (b1_max.x > b2_min.x && b1_min.x < b2_max.x)
            return true;
    }
    return false;
}

bool Collider::Collides(Collider other)
{
    glm::vec3 _min = glm::vec3(transform.model() * glm::vec4(min, 1.0f));
    glm::vec3 _max = glm::vec3(transform.model() * glm::vec4(max, 1.0f));
    glm::vec3 _omin = glm::vec3(other.transform.model() * glm::vec4(other.min, 1.0f));
    glm::vec3 _omax = glm::vec3(other.transform.model() * glm::vec4(other.max, 1.0f));
    return overlap(_min, _max, _omin, _omax);
}

Collider::Collider()
{
    hitbox = WiredSquare(min, max);
}

void Collider::update_min_max(glm::vec3 _min, glm::vec3 _max)
{
    min = _min;
    max = _max;
    hitbox.min = _min;
    hitbox.max = _max;
    hitbox.updateVertices();
}

void Collider::update_transform(Transform _transform)
{
    transform = _transform;
}
void Collider::drawHitBox(GLFWwindow *window, Shader &lineShader, glm::vec3 color)
{
    glm::mat4 model = transform.model();
    hitbox.drawLines(window, lineShader, model, color);
}