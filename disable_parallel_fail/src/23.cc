#include <iostream>

#include "test.pb.h"

struct Cat23 {
  Cat23() { std::cout << "Cat23" << std::endl; }
  ~Cat23() = default;
};

Cat23 cat23;