#include "date/date.h"
#include <iostream>

int main() {
  auto t = std::chrono::system_clock::now();
  std::cout << date::format("%FT%T", t);
  return 0;
}
