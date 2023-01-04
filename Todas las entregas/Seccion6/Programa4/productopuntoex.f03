!
!! cuarto.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue Apr  9 00:22:57 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 20:14:43 (angela)>
!
! Este programa calcula el producto escalar de dos vectores de 3
!  dimensiones..., con ayuda de arreglitos :3
PROGRAM producto_punto

! DECLARAR LAS VARIABLES
IMPLICIT NONE 
REAL,DIMENSION(3)::vecb,veca    ! arreglos con 3 espacios para cada vector
REAL::resp=0                    ! alojara la respuesta
INTEGER::i                      !contador


!IMPRIMIR C= INSTRUCIONES EN PANTALLA

WRITE(*,*)"Este programa calcula el producto punto, de dos vectores en&
     & R3"
WRITE(*,*)"De las componentes del primer  vector , en la forma rectangular"
READ(*,*)veca(1),veca(2),veca(3)
WRITE(*,*)"en seguida de las componentes del siguiente"
READ(*,*)vecb(1),vecb(2),vecb(3)

! calculos
! Con este DO , se van multiplicando los elementos de un vector por
!  los del otro, segun su lugar y se aloja el resultado en una suma...
! se repite 3, porque tienen 3 elementos cada vector.
Do i=1,3
resp=resp +( veca(i)*vecb(i))
ENd DO


! SE IMPRESIONAN :E LOS RESULTADOS 
WRITE(*,*)"los vectores que introdujo fueron:"
WRITE(*,*)veca
WRITE(*,*)vecb

WRITE(*,*)"y su producto punto es",resp


END PROGRAM producto_punto
! Fin... xD
