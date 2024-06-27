#include <iostream>

#include "test.pb.h"

struct Cat21 {
  Cat21() { std::cout << "Cat21" << std::endl; }
  ~Cat21() = default;
};

Cat21 cat21;