file(GLOB SRCS "src/*.cpp")

set(DTO_TARGET dto_trgt)

add_library(${DTO_TARGET} STATIC ${SRCS})
add_library(msh::ui_dto ALIAS ${DTO_TARGET})

target_include_directories(${DTO_TARGET} PRIVATE include/msh/ui)
target_include_directories(${DTO_TARGET} PUBLIC include)

if(BUILD_ALL_TESTS)
    add_subdirectory(tests)
endif()
