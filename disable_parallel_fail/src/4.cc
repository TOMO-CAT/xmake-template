#include <iostream>

#include "test.pb.h"

struct Cat4 {
  Cat4() { std::cout << "Cat4" << std::endl; }
  ~Cat4() = default;
};

Cat4 cat4;