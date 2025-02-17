set(SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/prims_tests.cpp
)

set(PRIMS_TEST_TARGET prims_tests)

include(dependencies.cmake)

add_executable(${PRIMS_TEST_TARGET} ${SRCS})
target_link_libraries(${PRIMS_TEST_TARGET} PRIVATE msh::ui_prims Catch2::Catch2WithMain)

add_test(NAME ${PRIMS_TEST_TARGET} COMMAND ${PRIMS_TEST_TARGET})
