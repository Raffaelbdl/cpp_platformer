#ifndef TEXTURE_CLASS_H
#define TEXTURE_CLASS_H

#include "config.h"
#include "Shader.h"
#include "stb_image.h"

class Texture
{
public:
    GLuint ID;
    GLuint unit;
    Texture(const char *image, GLuint slot);

    void texUnit(Shader &shader, const char *uniform, GLuint unit);
    void Bind();
    void Unbind();
    void Delete();
};

#endif