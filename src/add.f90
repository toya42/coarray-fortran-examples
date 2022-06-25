module add
  use,intrinsic :: iso_fortran_env
  use parameters,only : ki4,nx,ny
  implicit none
  private
  public :: add_moore_neighbourhood_values_using_cshift
  contains

    subroutine add_moore_neighbourhood_values_using_cshift(field,field_tmp)
      integer(ki4),intent(in) :: field(nx,ny)
      integer(ki4) :: field_tmp(nx,ny)

      field_tmp = cshift(field, 1,dim=1)    &
                 +cshift(field,-1,dim=1)    &
                 +cshift(field, 1,dim=2)    &
                 +cshift(field,-1,dim=2)    &
                 +cshift(cshift(field, 1,dim=1), 1,dim=2) &
                 +cshift(cshift(field, 1,dim=1),-1,dim=2) &
                 +cshift(cshift(field,-1,dim=1), 1,dim=2) &
                 +cshift(cshift(field,-1,dim=1),-1,dim=2)

    end subroutine add_moore_neighbourhood_values_using_cshift

end module add