set(SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/prims_tests.cpp
)

set(PRIMS_TEST_TARGET prims_tests)

include(dependencies.cmake)

add_executable(${PRIMS_TEST_TARGET} ${SRCS})
target_link_libraries(${PRIMS_TEST_TARGET} PRIVATE ${PRIMS_TARGET} Catch2::Catch2WithMain)

add_test(NAME PRIMS_CTEST COMMAND ${PRIMS_TEST_TARGET})
# target_include_directories(${PRIMS_TEST_TARGET} PRIVATE )