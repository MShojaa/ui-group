set(SRCS
    src/Align.cpp
    src/Border.cpp
    src/Color.cpp
    src/Font.cpp
    src/Padding.cpp
    src/Side.cpp
    src/Size.cpp
    src/TextStyle.cpp
)

set(PRIMS_TARGET prims)

add_library(${PRIMS_TARGET} STATIC ${SRCS})
add_library(msh::ui_PRIMS ALIAS ${PRIMS_TARGET})

target_include_directories(${PRIMS_TARGET} PRIVATE include/msh/ui)
target_include_directories(${PRIMS_TARGET} PUBLIC include)

if(BUILD_ALL_TESTS)
    add_subdirectory(tests)
endif()
