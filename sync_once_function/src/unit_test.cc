#include "gtest/gtest.h"
#include <chrono>
#include <thread>

TEST(TestCase, test1) {
    std::this_thread::sleep_for(std::chrono::seconds(1));
    ASSERT_EQ(2, 2);
}
