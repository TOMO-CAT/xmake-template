#include <iostream>

#include "test.pb.h"

struct Cat7 {
  Cat7() { std::cout << "Cat7" << std::endl; }
  ~Cat7() = default;
};

Cat7 cat7;