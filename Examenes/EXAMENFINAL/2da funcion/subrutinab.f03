!
!! subrutina.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Mon May 27 12:25:27 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-27.lunes 14:01:12 (ajteposte)>
!
! esta subrutina encontrar el maximo en un intervalo =o!!1 :E 
SUBROUTINE maxi(N,valx,evax,func,a,b,maxx)

IMPLICIT NONE
!ARGUMENTOS
INTEGER,INTENT(IN)::N                       !extension de arreglos
REAL,DIMENSION(N),INTENT(INOUT)::valx,evax  ! arreglos
REAL,INTENT(IN)::a,b                        ! intervalo
INTEGER,DIMENSION(1),INTENT(OUT)::maxx      !respuesta,maximo
REAL,EXTERNAL::func                         !funcion =o 
!LOCALES
INTEGER::i

! llenar el arrglos para las x evaluadas en la funcion 
Do i=1,N
evax(i)=func(valx(i))
END DO 
! El maximo >=c se evaluara ... :E haber en que luhar esta

maxx=MAXLOC(evax)
! Se condiciona para saber si no coincide con los extremos del
!  intervalo
! Si coincide con a

IF(maxx(1)==N)THEN 
WRITE(*,*)" Su maximo resultó ser estar en el 'b' de su intervalo"
ELSE IF (maxx(1)==1)THEN 
WRITE(*,*)" Su maximo resultó ser estar en el 'a' de su intervalo"
ELSE 
END IF 
! Si no pasa nada de eso pues se queda igual :E no pasa nada >=D

END SUBROUTINE maxi 
! TErmino la subrutina 
