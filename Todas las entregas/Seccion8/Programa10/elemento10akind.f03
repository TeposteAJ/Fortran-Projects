!
!! elemento10a.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 01:25:41 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 19:26:14 (angela)>
!

! subrutina para calcular el factorial :E

SUBROUTINE factorial(k,fac)
! Declaracion de variables 
IMPLICIT NONE
! ARGUMENTOS
INTEGER,PARAMETER::ks= SELECTED_INT_KIND(34)   !no es argumento,
                                               ! auxiliar  para encontrar un  
                                               !KIND establecido
INTEGER(KIND=ks),INTENT(INOUT)::fac            ! valor para facotorial
INTEGER,INTENT(IN)::k                          ! valor que se sacara factorial
INTEGER::n=1                                   ! contador

!Calculos del programa
fac=1
DO 
fac=fac*n
IF(n==k)EXIT
n=n+1
END DO 

! condicion para factorial de 0 
IF (k==0) fac=1

END SUBROUTINE factorial
! Termino la subrutina
