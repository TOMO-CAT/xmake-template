#include <iostream>

#include "test.pb.h"

struct Cat6 {
  Cat6() { std::cout << "Cat6" << std::endl; }
  ~Cat6() = default;
};

Cat6 cat6;