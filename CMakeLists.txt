cmake_minimum_required(VERSION 3.30.0)

set(PROJECT_VERSION "0.0.1")

project(
    UI_PRJECT
    VERSION ${PROJECT_VERSION}
    LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(FETCHCONTENT_FULLY_DISCONNECTED "" ON)
option(BUILD_ALL_TESTS "" ON)
option(BUILD_PRIMS_TESTS "" ON)

add_subdirectory(SmartWidget)

enable_testing()