#include "common/config.h"
#include "common/Character.h"
#include "common/Mesh.h"
#include "common/Shader.h"
#include "common/Sprite.h"
#include "common/Outline.h"
#include "common/Square.h"
#include "common/WiredSquare.h"
#include <random>

const unsigned int width = 1290;
const unsigned int height = 720;

double _time;
double prevtime;
double fixedDeltaTime = 0.001f;

bool FixedTimedLoop()
{
    double newTime = glfwGetTime();
    _time += newTime - prevtime;
    prevtime = newTime;

    if (_time >= fixedDeltaTime)
    {
        _time = 0.0f;
        return true;
    }
    return false;
}

void window_size_callback(GLFWwindow *window, int width, int height)
{
    glViewport(0, 0, width, height);
}

GLFWwindow *InitializeDisplay()
{
    if (!glfwInit())
    {
        std::cout << "Failed to initialize GLFW" << std::endl;
        return NULL;
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);

    GLFWwindow *window = glfwCreateWindow(width, height, "Platformer", NULL, NULL);
    // Scale everything when callback
    glfwSetWindowSizeCallback(window, window_size_callback);

    if (window == NULL)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return NULL;
    }
    glfwMakeContextCurrent(window);

    gladLoadGL();
    glViewport(0, 0, width, height);

    // Transparency
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    return window;
}

Shader InitializeShader()
{
    return Shader("shaders/default.vert", "shaders/default.frag");
}
Shader InitializeLineShader()
{
    return Shader("shaders/line.vert", "shaders/line.frag");
}

void clear_window(GLFWwindow *window)
{
    glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}

float random(float range_from, float range_to)
{
    std::random_device rand_dev;
    std::mt19937 generator(rand_dev());
    std::uniform_real_distribution<float> distr(range_from, range_to);
    return distr(generator);
}

void GeneratePlatforms(Collider *platforms, int nPlatforms, float &destination)
{
    float x = 0.0f;
    float y = -2.0f;
    float w = random(0.5f, 1.0f);
    float newW = 0.0f;
    for (unsigned int i = 0; i < nPlatforms; i++)
    {
        platforms[i] = Collider();
        glm::vec3 pos = glm::vec3(x, y, 0.0f);
        glm::vec3 scale = glm::vec3(w, 0.5f, 1.0f);
        platforms[i].update_min_max(pos - scale / 2.0f, pos + scale / 2.0f);
        platforms[i].hitbox.updateVertices();

        newW = random(0.5f, 1.0f);
        x = x + random(0.5f, 1.0f) + (w + newW) / 2.0f;
        w = newW;
        y = random(-0.3f, 0.3f) + y;
    }
    destination = x;
}

int main(int, char **)
{
    GLFWwindow *window = InitializeDisplay();
    if (window == NULL)
        return -1;

    Shader shader = InitializeShader();
    Shader lineShader = InitializeLineShader();
    Character character(width, height);
    Camera camera(width, height);

    float destination;
    Collider cols[10];
    GeneratePlatforms(cols, 10, destination);

    while (!glfwWindowShouldClose(window))
    {
        clear_window(window);

        character.GetInputs(window);
        if (FixedTimedLoop())
        {
            character.Physics(fixedDeltaTime, cols, 10);
            camera.updateMatrix((character.transform.pos + glm::vec3(character.transform.pos.x, -2.0f, 0.0f)) / 2.0f);
        }

        camera.Matrix(shader, "camMatrix");
        camera.Matrix(lineShader, "camMatrix");

        for (int i = 0; i < 10; i++)
        {
            cols[i].drawHitBox(window, lineShader, glm::vec3(1.0f));
        }

        character.Draw(window, shader, lineShader);

        if (character.transform.pos.x >= (float)width / height * cols[9].min.x)
        {
            std::cout << "You win !" << std::endl;
            glfwSetWindowShouldClose(window, 1);
        }

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    shader.Delete();

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
