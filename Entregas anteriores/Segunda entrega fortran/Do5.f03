!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-10.domingo 22:24:29 (angela)>
!

! Siguiendo con las sumas este programa calculara la media geometrica
!  y la media aritmetrica

! Comienza el programita C=
PROGRAM media_geometrica

! Declarar variables >=c 
IMPLICIT NONE

REAL::p                     ! guardara el valor de los datos introducidos
REAL::N=1                   ! Contador
REAL::producto=1,sumita=0   ! Para guardar la suma y producto de los datos
REAL::mediageo,mediaart     ! guardar resultados de las medias


!Imprimir intruciones al usuario =B y pedirle valor del 1er dato
WRITE(*,*)"Este programa le permitira conocer la media geometrica  de los datos que introduzca acontinuacion"
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)p
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

! Comenzar la suma, y el producto, Do While perdira datos y los
!  agregara a las operaciones  hasta que no se cumpla la condicion del parentesis
DO WHILE (p>=0.)

sumita=sumita+p

producto=producto*p

N=N+1
WRITE(*,*)"Deme otro dato"
READ(*,*)p

END DO

! Termina el DO WHILE y enseguida calcularemos las medias con la suma
!  y producto que nos dio arriba, de todos los datos introducidos

mediaart=(1./N)*sumita
mediageo= producto**(1./N)


! Imprimir al usuario los resultados 
WRITE(*,*)"La media geometrica de sus datos es:",mediageo
WRITE(*,*)"La media aritmetica es:",mediaart


END PROGRAM media_geometrica
! Fin del programa







