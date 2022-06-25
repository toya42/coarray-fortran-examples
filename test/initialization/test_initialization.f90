program test_initialize
  use,intrinsic :: iso_fortran_env
  use :: parameters
  use :: initialization

  integer(ki4) :: field(nx,ny),j,k
  character(50) :: pattern_name

  pattern_name='blinker'
  call test_initialize_field_blinker()

  contains
    subroutine test_initialize_field_blinker()
      integer(ki4) :: field_exact(5,5)

      field_exact=0
      field(2,3) = 1
      field(3,3) = 1
      field(4,3) = 1

      call initialize_field(field,pattern_name)

      do k=1,ny
        do j=1,nx
          if(field(nx,ny)/=field_exact(nx,ny)) error stop
        end do
      end do

    end subroutine test_initialize_field_blinker


end program test_initialize

