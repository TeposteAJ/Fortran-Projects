!
!! dosen.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sat Mar  2 21:30:33 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-07.jueves 16:14:28 (ajteposte)>
!
! Programa que nos ayudara a la calcular el seno de x valor, mediante
! una sumatoria, en la que el numero de terminos nos determinara la
! presicion de nuestro resultado, comparandolo con el de la funcion
! intriseca que viene.

PROGRAM dosen

!Declaracion de variables
IMPLICIT NONE

REAL::grad,radi          ! grados y radianes para el sen
REAL::N                  ! indica la cantidad de elementos de la sumatoria
REAL,PARAMETER::pi=3.141592654  ! se declarara el valor de pi
REAL::seni,senm          ! valores de los senos que se calcularan
REAL::b=1               ! contador y donde se guardara suma
REAL::sumat=0
REAL::fac=1
REAL::k=1
REAL::Error
REAL::x,y,z              ! para facilitar las cosas variables que
! auxiliaran al descomponer la ecuacion de la sumatoria
! Pedir al usuario los valores , para que el programa trabaje
WRITE(*,*)"Introduzca el valor en grados, del ángulo que desee calcula&
     &rle el Seno"
READ(*,*)grad
WRITE(*,*)"El programa lo calculara con la sumatoria de ******, introd&
     &uzca el número de terminos que desee tenga esta sumatoria [entre&
     & mayor sea el valor, mejor sera la aproximacion]"
READ(*,*)N

! Calculos antes de el DO ... tenemos que darle valor a pi y  la
!  conversion a radianes de los grados ya que fortan usa radianes

radi= (grad*pi)/180.

DO 

x=(-1)**(b-1)
y=radi**((2*b)-1)
z=(2*b)-1
fac=1
k=1
!Antes tenemos que calcular el factorial de z

                Factoriales:IF(z==0.)THEN
                               fac=1

                            ELSE 
                                     factor:DO 
                                                 fac=fac*k
                                            IF(z==k)EXIT
                                                  k=k+1
WRITE(*,*)"Factorial",fac
                                            END DO factor

                            END IF Factoriales

senm=x*(y/fac)

sumat=sumat+senm
WRITE(*,*)"suma hasta ahora es",sumat
IF(b>=N)EXIT
b=b+1

END DO

seni= sin(radi)

Error=seni - sumat

WRITE(*,*)"El valor del seno es "
WRITE(*,*)"Calculado con la funcion intrinseca:",seni
WRITE(*,*)"CAlculado con la sumatoria con",N,"terminos es",sumat
WRITE(*,*)"El error fue",Error


END PROGRAM dosen

                







