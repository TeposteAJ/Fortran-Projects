!
!! orbitas.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar  4 00:25:49 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 01:02:54 (angela)>
!
 ! Programa que no permite calcular la distancia 
PROGRAM orbitas

IMPLICIT NONE

INTEGER::E                          !Excentricidad
REAL::P                             ! auxiliar >=c necesario
REAL::r,te                          !Radio y angulo en grados
REAL::radi                          !angulo en radianes 
REAL,PARAMETER::pi=3.141592654      !valor de pi 


! Imprimir instruciones al usuario 

WRITE(*,*)"Deme el angulo que forma el satelite con respecto al centro&
     & de la tierra en grados"
READ(*,*)te

! Operaciones 
radi=(te*pi)/180

!Do que nos calculara la E para 0, .25 y .5

DO E=100,151,25

P=(E/100.)-1               ! Necesario porque no acepta incrementos
                           !  de .25
R=1200./(1-(P*Cos(radi)))
WRITE(*,*)"LA distancia del sateite a la tierra, con una excetricidad &
     &de",P," es:",r,"km"

END DO 
! Termina DO
WRITE(*,*)"***********************************************************&
     &****************************************************************&
     &****************************************************************&
     &****************************************************************"
!Otra opción, para cambiar la excentricidad
WRITE(*,*)"Si desea calcular la distancia para una ecentricidad difere&
     &nte puede introducir el dato...Si no solo ingrese algun caracter"
READ(*,*)E
r=1200/(1-(E*Cos(radi)))
! imprimir respuesta en pantalla
WRITE(*,*)"la distancia con una ecentricidad de",E,"es:",r



END PROGRAM orbitas
! Fin      
  
