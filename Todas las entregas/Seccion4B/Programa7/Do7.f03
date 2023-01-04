!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 07:39:34 (angela)>
!

! Siguiendo con las sumas este programa calculara la media armonica

!iniciando programa
PROGRAM media_armonica
! Declarar variables
IMPLICIT NONE

REAL::ju                     ! nos condicionara el numero de datos 
INTEGER::N=0                 ! Contador
REAL::suma=0                 ! guardar la suma de datos
REAL::media                  ! Guardar el resultado de la media
INTEGER::dats                ! Numero de datos que introduciran


! Imprimir instruciones para el usuario ;) y pedir valores 
WRITE(*,*)"Este programa le permitira conocer la media armonica  de los datos que introduzca acontinuacion"
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)ju
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

! DO para pedir todos los datos que quiera, hasta que de un numero negativo
DO 

suma=suma+(1/ju)

IF(ju>=0.)THEN
media=N/suma

WRITE(*,*)"El último dato que introdujo fue negativo, la media es:"&
     &,media
EXIT
ELSE 
N=N+1                       ! N se usa solo como contador de los
                            !  datos que introducen

WRITE(*,*)"Deme otro dato"
READ(*,*)ju

END IF

END DO

! Termia el Do 

! Imprimir en pantalla... preguntar cuantos datos introdujo
WRITE(*,*)"Cuantos datos fueron los que introdujo, sin contar el ultim&
     &o dato negativo"
READ(*,*)dats

!Condicionar , para saber si coincide el numero de datos dicho y los introducidos
              IF(dats==N)THEN
                  ! si es verdadero, se calcula la media y se imprime resultado
                  media=N/suma
                  WRITE(*,*)"la media Rms es",media
               
              ELSE
                  ! dar aviso de lo que paso
                   WRITE(*,*)"No coincide el números de datos que dijo introducio y los que el programa conto"
       
              END IF 
! Termina el IF




END PROGRAM media_armonica
! Termina el programa 







