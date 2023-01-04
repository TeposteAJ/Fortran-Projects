!
!! cuarto.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue Apr  9 00:22:57 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-09.martes 00:53:57 (angela)>
!

PROGRAM producto_punto

IMPLICIT NONE 
REAL,DIMENSION(3)::vecb,veca
REAL::resp=0
INTEGER::i


WRITE(*,*)"Este programa calcula el producto punto, de dos vectores en&
     & R3"
WRITE(*,*)"De las componentes del primer  vector , en la forma rectangular"
READ(*,*)veca(1),veca(2),veca(3)
WRITE(*,*)"en seguida de las componentes del siguiente"
READ(*,*)vecb(1),vecb(2),vecb(3)

! calculos

Do i=1,3
resp=resp +( veca(i)*vecb(i))
ENd DO


WRITE(*,*)"los vectores que introdujo fueron:"
WRITE(*,*)veca
WRITE(*,*)vecb

WRITE(*,*)"y su producto punto es",resp


END PROGRAM producto_punto

