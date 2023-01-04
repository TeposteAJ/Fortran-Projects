!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 13:52:14 (angela)>
!

! Siguiendo con las sumas este programa calculara la media aritmetica
  !  y la desviacion estadar 
! Inicia el programa 

PROGRAM media_aritmetrica
! Declarar variables 

IMPLICIT NONE

REAL::k,x,y,z          ! K contador, auxiliares
INTEGER::J             ! Numero de datos a introducir
INTEGER::N=0           ! Contador
REAL::sumita=0         ! Guardar los valores de la suma
REAL::Desviacion       !Resultados de la desviacion
REAL::media            ! Resultado de la media
REAL::sumitacuadrada=0 ! guaradar la suma de los datos al cuadrado

! Imprimir instruciones al usuario.

WRITE(*,*)"Este programa le permitira conocer la media aritmetica y la&
     & desviacion estandar de los datos que introduzca acontinuacion"
WRITE(*,*)" Cuantos datos desea introducir"
READ(*,*)J
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)k
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

! Condicinar el valor de K 
IF (k>=0.)THEN
! DO iterativo, para la suma y el producto
             DO  N=0,J

               sumita=sumita+k
               sumitacuadrada=sumitacuadrada+(k**2)
               

               WRITE(*,*)"Deme otro dato"
               READ(*,*)k

              END DO
! Los calculos
x=N*sumitacuadrada
y=sumita**2
z=N*(N-1)
media= (1./N)*sumita
Desviacion=sqrt((x-y)/z)
! Imprimir en pantalla los resultados 
WRITE(*,*)"los resultados de sus datos son:"
WRITE(*,*)"Media aritmetica",media
WRITE(*,*)"Desviacion estandar",Desviacion

ELSE 
     WRITE(*,*)"Algo no salio bien inicie de nuevo >=c"

END IF
END PROGRAM media_aritmetrica
! Termino el If y el programa 







