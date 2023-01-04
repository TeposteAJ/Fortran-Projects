!
!! program10.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 10:43:02 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 19:58:50 (angela)>
!
! ESte programa nos da la probabilidad de que un carro pase por una
!  carretera, fue necesario crear una funcion y una subrutina :E 
PROGRAM probabilidad_autos
IMPLICIT NONE
! Declaracion de variables
INTEGER::k                ! numero de carros
REAL::lambda,t            ! lambda y tiempo
REAL::probabilidad        ! el resultado, nombre de la funcion de probabilidad


! IMPRESIONAR AL USUARIO INTRUCIONES

WRITE(*,*)"===========================================================&
     &===="
WRITE(*,*)"PROGRAMA-DISTRIBUCION-DE-POISSON"
WRITE(*,*)"===========================================================&
     &===="
WRITE(*,*)"ESTE PROGRAMA CALCULA LA PROBABILIDAD CONOCIDA COMO 'DISTRI&
     &BUCIÓN DE POISSON'...APLICADO PARA EL CASO DE CARROS QUE PASAN P&
     &OR UNA CARRETERA"
WRITE(*,*)"                                   "
WRITE(*,*)"Siendo k, el numero de carros"
WRITE(*,*)"t, el tiempo en minutos"
WRITE(*,*)"y lambda una constante conocida"
WRITE(*,*)"                                   "
WRITE(*,*)"Introduzca en ese orden sus valores"
WRITE(*,*)"k,t,lambda"
READ(*,*)k,t,lambda

! calculos >=D SE hacen directo en la impresion de resultados :E 
WRITE(*,*)"RESULTADOS"
WRITE(*,*)"===========================================================&
     &===="
WRITE(*,*)"La funcion evaluada para sus valores es:", probabilidad(k,t&
     &,lambda)

END PROGRAM probabilidad_autos
! Termino el programa
