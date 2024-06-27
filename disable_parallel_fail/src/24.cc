#include <iostream>

#include "test.pb.h"

struct Cat24 {
  Cat24() { std::cout << "Cat24" << std::endl; }
  ~Cat24() = default;
};

Cat24 cat24;