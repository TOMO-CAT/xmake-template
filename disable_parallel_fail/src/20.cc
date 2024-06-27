#include <iostream>

#include "test.pb.h"

struct Cat20 {
  Cat20() { std::cout << "Cat20" << std::endl; }
  ~Cat20() = default;
};

Cat20 cat20;