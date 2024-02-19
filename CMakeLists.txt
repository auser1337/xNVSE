cmake_minimum_required(VERSION 3.28)

project(
        xNVSE
        LANGUAGES CXX
        VERSION 6.3.5
)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

set(CMAKE_CXX_STANDARD 20)

configure_file(
        "${PROJECT_SOURCE_DIR}/cmake/config.cmake.in"
        "${PROJECT_NAME}Config.cmake"
        @ONLY
)

add_subdirectory(src)
