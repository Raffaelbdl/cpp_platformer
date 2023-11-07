#ifndef SHADER_CLASS_H
#define SHADER_CLASS_H

#include "config.h"


class Shader
{
public:
    GLuint ID;
    Shader(const char *vertexFile, const char *fragmentFile);

    void Activate();
    void Delete();

private:
    void compileErrors(unsigned int shader, const char *type);
};

#endif