#ifndef CHARACTER_CLASS_H
#define CHARACTER_CLASS_H

#include "common/config.h"
#include "common/Mesh.h"
#include "common/Shader.h"
#include "common/Camera.h"
#include "common/Sprite.h"
#include "common/Collider.h"
#include "common/Square.h"
#include "common/Transform.h"

struct Inputs
{
    glm::vec2 movement = glm::vec2(0.0f);
    bool jump = false;
};

class Character
{
public:
    float speed = 10.0f;
    const char *path = "textures/gudako.png";
    Square square;

    Transform transform;
    Collider col;
    Collider groundCheck;

    Character(unsigned int width, unsigned int height);

    void Draw(GLFWwindow *window, Shader &shader, Shader &lineShader); // add camera to center camera on player

    void GetInputs(GLFWwindow *window);
    void Physics(double fixedDeltaTime, Collider *colliders, int nCols);
    void UpdateClock(double time);

private:
    Inputs inputs;

    bool isJumping = false;

    void jump();
    void fall();
    glm::vec3 move(float fixedDeltaTime, Collider *otherColliders, int nCols);
    float gravity = 100.0f;
    float fallMultiplier = 3.0f;
    float velY0 = 15.0f;
    float velY = 0.0f;
    float fallSpeed = 20.f;

    float velX = 0.0f;
    bool flipHor = false;

    glm::vec3 velocity = glm::vec3(0.0f, 0.0f, 0.0f);

    bool isColliding = false;
    bool isGrounded = false;
};

#endif