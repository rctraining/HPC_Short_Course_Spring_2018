program main
    implicit none
    character*120 :: myiochar
    call asub(myiochar)
    write(*,*)myiochar
    call bsub(myiochar)
    write(*,*)myiochar
    call csub(myiochar)
    write(*,*)myiochar
    call dsub(myiochar)
    write(*,*)myiochar

end program main
