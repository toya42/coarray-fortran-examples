program main
  use,intrinsic :: iso_fortran_env
  use :: parameters
  use :: initialization
  use :: add, only : add_moore_neighbourhood_values_using_cshift
  implicit none
  integer(ki4) :: field(nx,ny),field_tmp(nx,ny)
  character(50) :: pattern_name

  pattern_name='Blinker'
  call initialize_field(field,pattern_name)
  call add_moore_neighbourhood_values_using_cshift(field,field_tmp)


end program main