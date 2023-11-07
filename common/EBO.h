#ifndef EBO_CLASS_H
#define EBO_CLASS_H

#include "config.h"

class EBO
{
public:
    GLuint ID;
    EBO(std::vector<GLuint> &indices);

    void Bind();
    void Unbind();
    void Delete();
};

#endif