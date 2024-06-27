#include <iostream>

#include "test.pb.h"

struct Cat1 {
  Cat1() { std::cout << "Cat1" << std::endl; }
  ~Cat1() = default;
};

Cat1 cat1;