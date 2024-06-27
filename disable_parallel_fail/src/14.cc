#include <iostream>

#include "test.pb.h"

struct Cat14 {
  Cat14() { std::cout << "Cat14" << std::endl; }
  ~Cat14() = default;
};

Cat14 cat14;