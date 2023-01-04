!
!! elemento14b.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 21:03:40 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 01:15:26 (angela)>
!
! ES la misma subrutina >=c solo que ahora como nos enseñaron en
!  clase De calculo =o... :E con rectangulitos :E Sumas MEdias
SUBROUTINE suminte(a,b,nu,fun,inte)

IMPLICIT NONE
REAL,EXTERNAL::fun
REAL,INTENT(INOUT)::a,b
INTEGER,INTENT(IN)::nu
REAL,INTENT(OUT)::inte
REAL::delta,evaluar,altura
INTEGER::i
REAL::suma=0

! calculo el delta 
delta=(b-a)/REAL(nu)
! ahora si las cositas cambian n_n
DO i=1,nu
evaluar=(a+(a+delta))/2.     ! la funcion evaluada en :E ... xi+ xi
! +delta =o es decir tenemos x y la x que le sigue en intervalito :E
!  que se establecieron... en delta :E, entre dos =o para sacar el
!   punto medio de esas dos :E 

altura=fun(evaluar)          ! >=D evaluar en el punto calculado arriba
suma=suma+altura*delta       ! ahora base por altura :E , base
                             !  siempre igual a delta .... NOTESE SE
                             !  ESTA SUMANDO EL AREA DEL PRImER RECTANGULITO 
a=a+delta                    ! el siguiente a :E Es el a anterior más delta
END DO 
! Toda esa suma sera igual a la integral 
inte=suma
END SUBROUTINE suminte
! FIn de la subrutina
