#include "config.h"

std::string get_file_contents(const char *filename)
{
    std::cout << std::filesystem::current_path() << std::endl;
    std::ifstream in(filename, std::ios::binary);
    if (in)
    {
        std::cout << "here" << std::endl;
        std::string contents;
        in.seekg(0, std::ios::end);
        contents.resize(in.tellg());
        in.seekg(0, std::ios::beg);
        in.read(&contents[0], contents.size());
        in.close();
        return (contents);
    }
    throw(errno);
}

glm::vec3 normalize(int w, int h)
{
    float ratio = (float)w / h;
    return glm::vec3(ratio, 1.0f, 1.0f);
}