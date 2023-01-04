!
!! elemento14b.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 21:03:40 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 01:17:51 (angela)>
!
! subrutina calcula :E la integral definida en un rango :E 
SUBROUTINE suminte(a,b,nu,fun,inte)
! declaracion de variablez n_n 
IMPLICIT NONE
! ARGUMENTOS
REAL,EXTERNAL::fun         ! funcion a prueba, external es necesario
                           ! cuando se llama una funcion en un subrutina
REAL,INTENT(INOUT)::a,b    ! intervalo
INTEGER,INTENT(IN)::nu     ! numero de divisiones
REAL,INTENT(OUT)::inte     ! integral
! LOCALES
REAL::delta,evaluar,altura ! auxiliares :E 
INTEGER::i                 ! contador
REAL::suma=0               ! >=c auxiliar 

! CALCULOS -uso el metodo de sumas medias...
! primero calculo el delta :E 
delta=(b-a)/REAL(nu)
! ahora la suma :E , factorize >=c delta que multiplico a todos los
!  rectangulitos como base >=c... y a :E la fraccion n_n que resulta
!   de partir el intervalo n_n  ...
DO i=1,nu-1
suma=suma+fun(a)
a=a+delta
END DO 
 
! ahora si :E lo mutiplico por los factore que habia sacado antes...
! lo que se le agrega a suma :E es los valores de los rectangulitos
!  en general
inte=delta*(((fun(a)+fun(b))/2.)+suma)
! burdamente el area bajo la funcion

END SUBROUTINE suminte
!TErmino la subrutina >=c 
