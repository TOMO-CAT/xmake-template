#include <iostream>

#include "test.pb.h"

struct Cat2 {
  Cat2() { std::cout << "Cat2" << std::endl; }
  ~Cat2() = default;
};

Cat2 cat2;