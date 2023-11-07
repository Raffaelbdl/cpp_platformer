#include "common/Camera.h"

Camera::Camera(int width, int height)
{
    Camera::width = width;
    Camera::height = height;
}

void Camera::updateMatrix(glm::vec3 position)
{
    // unormalize character position for camera coordinates
    glm::vec3 pos = position;
    pos.x *= (float)height / width;

    glm::mat4 view = glm::mat4(1.0f);
    glm::mat4 ortho = glm::mat4(1.0f);
    view = glm::lookAt(pos, pos + Orientation, Up);
    ortho = glm::ortho(-1.5f, 1.5f, -1.5f, 1.5f);

    cameraMatrix = ortho * view;
}
void Camera::Matrix(Shader &shader, const char *uniform)
{
    shader.Activate();
    glUniformMatrix4fv(glGetUniformLocation(shader.ID, uniform), 1, GL_FALSE, glm::value_ptr(cameraMatrix));
}
