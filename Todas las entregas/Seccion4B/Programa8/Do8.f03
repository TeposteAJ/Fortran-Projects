!
!! orbitas.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar  4 00:25:49 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 01:29:18 (angela)>
!
 ! Programa que no permite calcular la distancia de la tierra y un satelite 
PROGRAM orbitas

!Declarar variables
IMPLICIT NONE

REAL::E                             !Excentricidad
REAL::r,te                          !Radio y angulo en grados
REAL::radi                          !angulo en radianes 
REAL,PARAMETER::pi=3.141592654      !valor de pi 


! Imprimir instruciones al usuario 

WRITE(*,*)"Deme el angulo que forma el satelite con respecto al centro&
     & de la tierra en grados"
READ(*,*)te

! Operaciones 
radi=(te*pi)/180.
E=0

!Do que nos calculara la E para 0, .25 y .5

DO 

R=1200./(1-(E*Cos(radi)))
WRITE(*,*)"LA distancia del sateite a la tierra, con una excetricidad &
     &de",E," es:",r,"km"

     IF (E==0.5) EXIT
E=E+0.25
END DO

WRITE(*,*)"Desea saber cual es la distancia maxima del satelite a el c&
     &entro de la tierra , introduzca la excentricidad deseada"
READ(*,*)E
           IF(E==0)THEN
                      R=1200./(1-(E*Cos(pi)))
                      WRITE(*,*)"La distancia maxima y minima es",R,"es un circulo"
           ELSE IF(E<=0)THEN
                      WRITE(*,*)"la distancia maxima es infinita, es una hiperbola"
                                 R=1200./(1-(E*Cos(.0)))
                      WRITE(*,*)"La distancia minima es:",R
           ELSE
                      R=1200./(1-(E*Cos(pi)))
                      WRITE(*,*)"La distancia maxima es.",R,"es una elipse"
                      R=1200./(1-(E*Cos(.0)))
                      WRITE(*,*)"La distancia minica es:",R
            END IF
    


END PROGRAM orbitas
! Fin      
  
