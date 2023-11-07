#version 330 core
layout (location = 0) in vec3 aPos;
uniform mat4 MVP;
uniform mat4 camMatrix;
void main()
{
   gl_Position = camMatrix * MVP * vec4(aPos.x, aPos.y, aPos.z, 1.0);
};