# version
cmake_minimum_required(VERSION 3.22.2)
# project name
project(coarray_examples Fortran)
# fortran
enable_language(Fortran)

#path
set(LIB_MOD_DIR ${CMAKE_CURRENT_BINARY_DIR}/mod_files)
set(CMAKE_Fortran_MODULE_DIRECTORY ${LIB_MOD_DIR})

# test
enable_testing()

# directory
add_subdirectory(src)
add_subdirectory(test)