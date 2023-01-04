!
!! elemento10a.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 01:25:41 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 19:43:54 (angela)>
!
! Subrutina que calcula el factorial 
SUBROUTINE factorial(k,fac)
! Declaracion de variables
IMPLICIT NONE
! ARGUMENTOS
REAL,INTENT(OUT)::fac     ! factorial
INTEGER,INTENT(IN)::k     ! numero que se calculara factorial
!LOCALES
INTEGER::n=1              ! contador   

!Calculo para el factorial
fac=1

DO 
fac=fac*n
IF(n==k)EXIT
n=n+1
END DO 

! Si el factorial es 0
IF (k==0) fac=1

END SUBROUTINE factorial
! Termino la subrutina
