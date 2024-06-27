#include <iostream>

#include "test.pb.h"

struct Cat17 {
  Cat17() { std::cout << "Cat17" << std::endl; }
  ~Cat17() = default;
};

Cat17 cat17;