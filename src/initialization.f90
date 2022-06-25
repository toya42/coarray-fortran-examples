module initialization
  use,intrinsic :: iso_fortran_env
  use :: parameters
  implicit none
  private
  public :: initialize_field

  contains
    subroutine initialize_field(field,pattern_name)
      character(50),intent(in) :: pattern_name
      integer(ki4) :: field(nx,ny)

      field = 0
      select case (trim(pattern_name))
        case ('blinker')
          if(nx==5 .and. ny==5) then
            field(2,3) = 1
            field(3,3) = 1
            field(4,3) = 1
          else
            error stop "invalid nx or ny"
          end if
        case default
          error stop "invalid pattern name"
      end select

    end subroutine initialize_field

end module initialization