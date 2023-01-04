!
!! orbitas.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar  4 00:25:49 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-09.sábado 13:09:15 (angela)>
!
 ! Programa que no permite calcular la distancia 
PROGRAM orbitas

IMPLICIT NONE

REAL::E                             !Excentricidad
REAL::r,te                          !Radio y angulo en grados
REAL::radi                          !angulo en radianes 
REAL,PARAMETER::pi=3.141592654      !valor de pi 


! Imprimir instruciones al usuario 

WRITE(*,*)"Deme el angulo que forma el satelite con respecto al centro&
     & de la tierra en grados"
READ(*,*)te
WRITE(*,*)"***********************************************************&
     &****************************************************************&
     &****************************************************************&
     &****************************************************************"
! Operaciones 
radi=(te*pi)/180
r=1200/(1-(0*Cos(radi)))
!Imprimir para E=0
WRITE(*,*)"LA distancia del sateite a la tierra, con una excetricidad &
     &de 0  es:",r,"km"
WRITE(*,*)"La trayectoria es de forma circular y el es la MINIMA distanci&
     &a a la que puede estar."
WRITE(*,*)"_____________________________________________________________________"

r=1200/(1-(0.25*Cos(radi)))

! Imprimir resultados para E=1/4

WRITE(*,*)"La distancia del satelite a la tierra, con una excentricida&
     &d de 1/4 es:",r,"km" 
WRITE(*,*)"La trayectoria es de forma eliptica"
WRITE(*,*)"_____________________________________________________________________"
r=1200/(1-(.5*Cos(radi)))

!Imprimir resultados para E=1/2
WRITE(*,*)"La distancia del satelite al la tierra, con una excentricid&
     &ad de 1/2 es:",r,"km"
WRITE(*,*)"La trayectoria es de forma eliptica y es la MÁXIMA distanci&
     &a la que puede estar"

WRITE(*,*)"***********************************************************&
     &****************************************************************&
     &****************************************************************&
     &****************************************************************"
!Otra opción, para cambiar la excentricidad
WRITE(*,*)"Si desea calcular la distancia para una ecentricidad difere&
     &nte puede introducir el dato...Si no solo ingrese algun caracter"
READ(*,*)E
r=1200/(1-(E*Cos(radi)))

WRITE(*,*)"la distancia con una ecentricidad de",E,"es:",r



END PROGRAM orbitas
! Fin      
  
