!
!! elemento9.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp35>
!! 
!! Started on  Mon May 20 12:04:00 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-26.domingo 18:13:12 (angela)>
!
! Esta subrutina calcula el producto punto >=c de vectores en R3
SUBROUTINE productop(resp,A,B)

!Declaración de variables
IMPLICIT NONE
! ARUMENTOS 
REAL,DIMENSION(3)::resp             ! el vector resultante
REAL,DIMENSION(3),INTENT(IN)::A,B   ! vectores a operar


!calculos, componente por componente del resultante 
resp(1)=((A(2)*B(3))-(B(2)*A(3)))
resp(2)=((A(3)*B(1))-(B(3)*A(1)))
resp(3)=((A(1)*B(2))-(B(1)*a(2)))

END SUBROUTINE productop
! Fin de la subrutina >=D
