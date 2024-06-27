#include <iostream>

#include "test.pb.h"

struct Cat15 {
  Cat15() { std::cout << "Cat15" << std::endl; }
  ~Cat15() = default;
};

Cat15 cat15;