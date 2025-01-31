set(SRCS
    src/LSize.cpp
)

set(PRIMS_TARGET prims)

add_library(${PRIMS_TARGET} STATIC ${SRCS})
add_library(msh::ui_PRIMS_TARGET ALIAS ${PRIMS_TARGET})

target_include_directories(${PRIMS_TARGET} PRIVATE include/msh/ui)
target_include_directories(${PRIMS_TARGET} PUBLIC include)

if(BUILD_ALL_TESTS AND BUILD_PRIMS_TESTS)
    enable_testing()
    include(CTest)
    add_subdirectory(tests)
endif()
