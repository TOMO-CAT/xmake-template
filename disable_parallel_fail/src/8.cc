#include <iostream>

#include "test.pb.h"

struct Cat8 {
  Cat8() { std::cout << "Cat8" << std::endl; }
  ~Cat8() = default;
};

Cat8 cat8;