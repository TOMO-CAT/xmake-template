#include <iostream>

#include "test.pb.h"

struct Cat19 {
  Cat19() { std::cout << "Cat19" << std::endl; }
  ~Cat19() = default;
};

Cat19 cat19;