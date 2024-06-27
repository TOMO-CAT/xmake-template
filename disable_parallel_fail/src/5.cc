#include <iostream>

#include "test.pb.h"

struct Cat5 {
  Cat5() { std::cout << "Cat5" << std::endl; }
  ~Cat5() = default;
};

Cat5 cat5;