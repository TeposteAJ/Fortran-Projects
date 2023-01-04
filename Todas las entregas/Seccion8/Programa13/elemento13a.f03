!
!! elemento13a.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 16:33:26 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 00:16:17 (angela)>
!
! esta funcion :E es simple y solo se usará :E para una surutina :E
!  como ejemplo :E de que se puede integrar cualquier otra funcion
! DEclaracion de variables  
REAL FUNCTION prueba(x)        ! la funcion es "prueba"
IMPLICIT NONE  
REAL,INTENT(IN)::x             ! el valor en que se evaluara

! Calculo de la función
prueba=(x**2)-2

!Fin de la función
END FUNCTION prueba
