#include "common/Character.h"
#include <GLFW/glfw3.h>
#include <array>

Character::Character(unsigned int width, unsigned int height)
{
    square = Square("textures/gudako.png");
    glm::vec3 white = glm::vec3(1.0f);

    transform = Transform();
    col = Collider();
    col.update_min_max(glm::vec3(-0.3f, -0.5f, 0.0f), glm::vec3(0.3f, 0.5f, 0.0f));
    groundCheck = Collider();
    groundCheck.update_min_max(glm::vec3(-0.29f, -0.55f, 0.0f), glm::vec3(0.29f, -0.4f, 0.0f));

    float ratio = (float)height / width;
    transform.scale *= glm::vec3(ratio, 1.0f, 1.0f);
}

void Character::Draw(GLFWwindow *window, Shader &shader, Shader &lineShader)
{
    glm::mat4 model = transform.model();

    square.drawSquare(window, shader, model, flipHor);

    glm::vec3 color = isColliding ? glm::vec3(1.0f, 0.0f, 0.0f) : glm::vec3(1.0f);
    col.drawHitBox(window, lineShader, color);

    glm::vec3 colorGround = isGrounded ? glm::vec3(0.0f, 1.0f, 0.0f) : glm::vec3(1.0f);
    groundCheck.drawHitBox(window, lineShader, colorGround);
}

void Character::GetInputs(GLFWwindow *window)
{
    // Movement
    float movX = 0.0f;
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
    {
        movX += 1.0f;
    }
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
    {
        movX -= 1.0F;
    }

    inputs.movement.x = movX;
    if (inputs.movement.x > 0.0f)
        flipHor = true;
    else if (inputs.movement.x < 0.0f)
        flipHor = false;

    float movY = 0.0f;
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
    {
        movY += 1.0f;
    }
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
    {
        movY -= 1.0F;
    }
    inputs.movement.y = movY;

    // Jump
    inputs.jump = (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS);
}

void Character::Physics(double fixedDeltaTime, Collider *otherColliders, int nCols)
{
    jump();
    if (isGrounded)
    {
        velY = max(velY, 0.0f);
    }

    if (!isGrounded)
        if (velY <= 0.0f)
            velY -= fallMultiplier * gravity * fixedDeltaTime;
        else
            velY -= gravity * fixedDeltaTime;
    else if (!isJumping)
        velY = 0.0f;
    else if (isJumping)
    {
        if (velY <= 0)
            isJumping = false;
    }

    velY = max(velY, -fallSpeed);
    velocity.x = inputs.movement.x * speed;
    velocity.y = velY;

    glm::vec3 newPos = move(fixedDeltaTime, otherColliders, nCols);
    if (glm::length2(newPos - transform.pos) > 0.0001f * 0.0001f)
    {
        transform.pos = newPos;
    }
    col.update_transform(transform);
    groundCheck.update_transform(transform);
}

void Character::jump()
{
    if (!inputs.jump)
        return;

    if (isJumping)
        return;

    if (!isGrounded)
        return;

    velY = velY0;
    isJumping = true;
}

void Character::fall()
{
}

glm::vec3 Character::move(float fixedDeltaTime, Collider *otherColliders, int nCols)
{
    glm::vec3 prevPos = transform.pos;
    glm::vec3 wantedPos = prevPos + velocity * fixedDeltaTime;

    unsigned int nTests = 5;
    glm::vec3 step = (1.0f / nTests) * fixedDeltaTime * velocity;

    glm::vec3 testPos = prevPos;

    for (unsigned int t = 1; t <= nTests; t++)
    {
        glm::vec3 newPos = testPos + step;
        bool collides = false, collidesGround = false;
        col.transform.pos = newPos;
        groundCheck.transform.pos = newPos;
        for (unsigned int i = 0; i < nCols; i++)
        {
            if (groundCheck.Collides(otherColliders[i]))
            {
                collidesGround = true;
            }
            if (col.Collides(otherColliders[i]))
            {
                collides = true;
                break;
            }
        }

        isColliding = collides;
        isGrounded = collidesGround;

        if (collides)
            if (!isGrounded)
                return testPos + glm::vec3(0.0f, step.y, 0.0f);
            else
                return testPos;
        testPos = newPos;
    }
    return testPos;
}
