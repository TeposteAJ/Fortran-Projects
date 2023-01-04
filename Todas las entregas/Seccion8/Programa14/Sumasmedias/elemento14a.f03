!
!! elemento14a.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 20:42:39 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 00:47:11 (angela)>
!
! solo es la funcion ;) que nos auxiliara ;) ... es lo de menos c=
!  creo =o !!!
REAL FUNCTION fprueba(x)            ! funcion....
IMPLICIT NONE
REAL,INTENT(IN)::x                  ! dominio de la funcion
REAL,PARAMETER::pi=3.141592654      ! valor de pi, necesario en
!  funcion

! Calculo de la funcino :E 
fprueba=((cos(pi*x))**2)+1 
END FUNCTION fprueba
! Fin de la funcion
