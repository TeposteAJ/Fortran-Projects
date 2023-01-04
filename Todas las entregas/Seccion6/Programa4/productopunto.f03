!
!! cuarto.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue Apr  9 00:22:57 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 20:16:25 (angela)>
!
! Este programa calcula el producto escalar de dos vectores de 3
!  dimensiones..., con ayuda de arreglitos :3
PROGRAM producto_punto

! DECLARAR LAS VARIABLES
IMPLICIT NONE 
REAL,DIMENSION(3)::vecb,veca,resp1        ! arreglos alojaran los vectores
REAL::resp=0                              !alojara la respuesta
INTEGER::i                                !contador 


!IMPRIMIR C= INSTRUCIONES EN PANTALLA

WRITE(*,*)"Este programa calcula el producto punto, de dos vectores en&
     & R3"
WRITE(*,*)"De las componentes del primer  vector , en la forma rectangular"
READ(*,*)veca(1),veca(2),veca(3)
WRITE(*,*)"en seguida de las componentes del siguiente"
READ(*,*)vecb(1),vecb(2),vecb(3)

! calculos

! se opera elemento por elemento de cada vector y se guarda en otro
!  arreglo de igual tamaño
! esto solo se puede hacer con matrices de mismo tamaño y dimensiones
resp1=veca*vecb

! se suman los componentes de ese arreglo resultante
Do i=1,3
resp=resp +resp1(i)
END DO


! SE IMPRESIONAN :E LOS RESULTADOS 
WRITE(*,*)"los vectores que introdujo fueron:"
WRITE(*,*)veca
WRITE(*,*)vecb

WRITE(*,*)"y su producto punto es",resp


END PROGRAM producto_punto
! Fin... xD


