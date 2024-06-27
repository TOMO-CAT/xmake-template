#include <iostream>

#include "test.pb.h"

struct Cat22 {
  Cat22() { std::cout << "Cat22" << std::endl; }
  ~Cat22() = default;
};

Cat22 cat22;