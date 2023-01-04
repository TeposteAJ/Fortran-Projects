!
!! dosen.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sat Mar  2 21:30:33 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 01:47:28 (angela)>
!
! Programa que nos ayudara a la calcular el seno de x valor, mediante
! una sumatoria, en la que el numero de terminos nos determinara la
! presicion de nuestro resultado, comparandolo con el de la funcion
! intriseca que viene.

PROGRAM dosen

!Declaracion de variables
IMPLICIT NONE

REAL::grad,radi          ! grados y radianes para el sen
INTEGER::N               ! indica la cantidad de elementos de la sumatoria
REAL,PARAMETER::pi=3.141592654       ! se declarara el valor de pi
REAL::seni,senm          ! valores de los senos que se calcularan
INTEGER::b=1             ! contador y donde se guardara suma
REAL::sumat=0
REAL::fac=1
INTEGER::k=1
REAL::Error
REAL::x,y              ! para facilitar las cosas variables que
INTEGER::z             ! auxiliaran al descomponer la ecuacion de la sumatoria
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

DO b=1,N
fac=1
k=1
x=(-1)**(b-1)
y=radi**((2*b)-1)
z=(2*b)-1
!Antes tenemos que calcular el factorial de z

                Factoriales:IF(z==0.)THEN
                               fac=1

                            ELSE 
                                     factor:DO k=1,z 
                      
                                               fac=fac*k
                                             
                                               WRITE(*,*)"Factorial",fac
                                            END DO factor

                            END IF Factoriales

senm=x*(y/fac)

sumat=sumat+senm
WRITE(*,*)"suma hasta ahora es",sumat


END DO

seni= sin(radi)

Error=seni - sumat

WRITE(*,*)"El valor del seno es "
WRITE(*,*)"Calculado con la funcion intrinseca:",seni
WRITE(*,*)"CAlculado con la sumatoria con",N,"terminos es",sumat
WRITE(*,*)"El error fue",Error


END PROGRAM dosen

                







