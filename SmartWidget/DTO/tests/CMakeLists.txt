set(DTO_TEST_TARGET dto_tests)

set(SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/${DTO_TEST_TARGET}.cpp
)

include(dependencies.cmake)

add_executable(${DTO_TEST_TARGET} ${SRCS})
target_link_libraries(${DTO_TEST_TARGET} PRIVATE ${DTO_TARGET} Catch2::Catch2WithMain)

add_test(NAME ${DTO_TEST_TARGET} COMMAND ${DTO_TEST_TARGET})
