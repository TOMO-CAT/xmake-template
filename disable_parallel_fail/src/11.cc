#include <iostream>

#include "test.pb.h"

struct Cat11 {
  Cat11() { std::cout << "Cat11" << std::endl; }
  ~Cat11() = default;
};

Cat11 cat11;