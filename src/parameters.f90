module parameters
  use,intrinsic :: iso_fortran_env
  implicit none

  integer,parameter :: ki4=selected_int_kind(4)
  integer(ki4),parameter :: kdp=selected_real_kind(15)
  integer(ki4),parameter :: ksp=selected_real_kind(8)

  !blinker
  integer(ki4),parameter :: nx=5
  integer(ki4),parameter :: ny=5
  integer(ki4),parameter :: threshold=3

end module parameters
