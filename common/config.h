
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <cerrno>
#include <filesystem>
#include <vector>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtx/rotate_vector.hpp>
#include <glm/gtx/vector_angle.hpp>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

std::string get_file_contents(const char *filename);
glm::vec3 normalize(int w, int h);