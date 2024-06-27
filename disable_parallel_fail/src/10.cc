#include <iostream>

#include "test.pb.h"

struct Cat10 {
  Cat10() { std::cout << "Cat10" << std::endl; }
  ~Cat10() = default;
};

Cat10 cat10;