!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 13:56:57 (angela)>
!

! Siguiendo con las sumas este programa calculara la media rms
! INICIA EL PROGRAMA
PROGRAM media_rms
! Declaración de variables 
IMPLICIT NONE

REAL::blip       ! valor de datos
INTEGER::N=0     ! Contador
REAL::sumita=0   ! Guardar los resultados de la suma
REAL::mediar     ! Resultado de las media
INTEGER::dat     ! numero de datos a introducir


! Imprimamos las intruciones al usuario, para que sepa que hacer 

WRITE(*,*)"Este programa le permitira conocer la media geometrica  de &
     &los datos que introduzca acontinuacion"
WRITE(*,*)"Cuantos datos seran los que introducira"
READ(*,*)dat

! Do iterativo, repetira la opcion para pedir los datos
DO  N=1,dat
WRITE(*,*)"Deme unos de los datos ahora"
READ(*,*)blip
sumita=sumita+(blip**2)

END DO
! Termina el Do iterativo, y empiezan los calculos 

                  mediar=sqrt((1./dat)*sumita)
                  WRITE(*,*)"la media Rms es",mediar
                  ! Se imprimeron los resultados
            


! Termina el programa 
END PROGRAM media_rms








