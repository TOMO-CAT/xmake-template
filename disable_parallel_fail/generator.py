#!/usr/bin/python3

import os
import argparse

def generate_files(n):
    if not os.path.exists('src'):
        os.makedirs('src')
    print(f'going to generate [{n}] files')

    for i in range(1, n+1):
        file_name = f'src/{i}.cc'
        with open(file_name, 'w') as file:
            print(f'generate file [{i}]')
            file_content = f"""
#include <iostream>

#include "test.pb.h"

struct Cat{i} {{
  Cat{i}() {{ std::cout << "Cat{i}" << std::endl; }}
  ~Cat{i}() = default;
}};

Cat{i} cat{i};
"""
            file.write(file_content.strip())
#             file.write(f"""
# #include <iostream>

# class Cat{i} {
#     Cat{i}() {
#         std::cout << "Cat{i}" << std::endl;
#     }
# };
# """)

# ./generator.py 20
parser = argparse.ArgumentParser(description='Generate .cc files in the src directory.')
parser.add_argument('count', type=int, help='The number of .cc files to generate.')
args = parser.parse_args()
generate_files(args.count)
