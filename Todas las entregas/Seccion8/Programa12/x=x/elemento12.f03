!
!! elemento12.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 13:55:47 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 23:05:13 (angela)>
!
! Esta subrutina deriva una funcion :E dada... ( Es decir tiene que
!  estar hecha previamente...
SUBROUTINE derivada(k,arr,deriv,delta)
! Declaración de variables 
IMPLICIT NONE
! ARGUMENTOS
INTEGER,INTENT(IN)::k                 ! dimension del arreglo
REAL,DIMENSION(k+1),INTENT(IN)::arr   ! arreglo con valores de sen(X)
REAL,DIMENSION(k),INTENT(OUT)::deriv  ! arreglo con las derivadas
REAl,INTENT(IN)::delta                ! delta =o dado por el usuario
INTEGER::i                            ! contador

! Calculos >=c ...

! Este Do calcula la derivada para cada punto :E de sen(x)
DO i=1,k
IF(delta<=0.00001)WRITE(*,*)"delta muy cercano a 0,Error"
deriv(i)=(arr(i+1)-arr(i))/delta
! deriva=f(i+1)-f(i)/Deltax  ... Limite :E cuando deltax-->0
END DO 
! ya estan calculados los valores de la derivada de Sen(x)

END SUBROUTINE derivada 
! Termina la subrutina :E 
