#include <iostream>

#include "test.pb.h"

struct Cat25 {
  Cat25() { std::cout << "Cat25" << std::endl; }
  ~Cat25() = default;
};

Cat25 cat25;