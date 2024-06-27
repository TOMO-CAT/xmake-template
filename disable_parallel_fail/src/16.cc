#include <iostream>

#include "test.pb.h"

struct Cat16 {
  Cat16() { std::cout << "Cat16" << std::endl; }
  ~Cat16() = default;
};

Cat16 cat16;