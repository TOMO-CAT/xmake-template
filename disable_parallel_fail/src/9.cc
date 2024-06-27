#include <iostream>

#include "test.pb.h"

struct Cat9 {
  Cat9() { std::cout << "Cat9" << std::endl; }
  ~Cat9() = default;
};

Cat9 cat9;