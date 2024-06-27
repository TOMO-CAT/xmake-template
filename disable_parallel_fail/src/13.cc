#include <iostream>

#include "test.pb.h"

struct Cat13 {
  Cat13() { std::cout << "Cat13" << std::endl; }
  ~Cat13() = default;
};

Cat13 cat13;