#include <iostream>

#include "test.pb.h"

struct Cat18 {
  Cat18() { std::cout << "Cat18" << std::endl; }
  ~Cat18() = default;
};

Cat18 cat18;