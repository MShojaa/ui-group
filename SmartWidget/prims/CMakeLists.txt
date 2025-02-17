file(GLOB SRCS "src/*.cpp")

set(PRIMS_TARGET prims_trgt)

add_library(${PRIMS_TARGET} STATIC ${SRCS})
add_library(msh::ui_prims ALIAS ${PRIMS_TARGET})

target_include_directories(${PRIMS_TARGET} PRIVATE include/msh/ui)
target_include_directories(${PRIMS_TARGET} PUBLIC include)

if(BUILD_ALL_TESTS)
    add_subdirectory(tests)
endif()
