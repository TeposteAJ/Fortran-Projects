!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 13:46:33 (angela)>
!

! Siguiendo con las sumas este programa calculara la media geometrica
!  y la media aritmetrica

PROGRAM media_geometrica
!Declarar variables
IMPLICIT NONE

REAL::p                      ! Valores
INTEGER::N,J                 ! Contador
REAL::producto=1,sumita=0    ! Guardar las sumas y productos de los datos
REAL::mediageo,mediaart      ! valores de las medias

! Imprimir instruciones a el usuario

WRITE(*,*)"Este programa le permitira conocer la media geometrica  de &
     &los datos que introduzca acontinuacion"
WRITE(*,*)"Numero de datos que desea introducir"
READ(*,*)J
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)p
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

! Do iterativo 
DO n=0,J

sumita=sumita+p

producto=producto*p

WRITE(*,*)"Deme otro dato"
READ(*,*)p

END DO
!Fin del Do, y comenzar los calculos 
mediaart=(1./N)*sumita
mediageo= producto**(1./N)

!Imprimir resultados, de ambas medias 
WRITE(*,*)"La media geometrica de sus datos es:",mediageo
WRITE(*,*)"La media aritmetica es:",mediaart

! Fin del programa 
END PROGRAM media_geometrica








