!
!! funcionb.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Mon May 27 12:21:17 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-27.lunes 12:24:34 (ajteposte)>
!

REAL FUNCTION prueba(x)
IMPLICIT NONE 
REAL,INTENT(IN)::x
!Calculos
prueba=(3*(x**3))-(1./9.)
END FUNCTION