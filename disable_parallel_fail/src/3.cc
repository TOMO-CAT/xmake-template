#include <iostream>

#include "test.pb.h"

struct Cat3 {
  Cat3() { std::cout << "Cat3" << std::endl; }
  ~Cat3() = default;
};

Cat3 cat3;