#include <iostream>

#include "test.pb.h"

struct Cat12 {
  Cat12() { std::cout << "Cat12" << std::endl; }
  ~Cat12() = default;
};

Cat12 cat12;