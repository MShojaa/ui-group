#include <catch2/catch_test_macros.hpp>

TEST_CASE("test", "[test]") {
    SUCCEED("Yes!");
}

// #include <cassert>
// #include <iostream>

// void test() {
//     assert(5 + 2 == 7);
// }

// int main()
// {
//     std::cout << "All tests passed\n";
//     return 0;
// }