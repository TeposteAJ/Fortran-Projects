!
!! cuarto.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue Apr  9 00:22:57 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-09.martes 01:15:12 (angela)>
!

PROGRAM producto_punto

IMPLICIT NONE 
REAL,DIMENSION(3)::vecb,veca,resp



WRITE(*,*)"Este programa calcula el producto vectorial, de dos vectores en&
     & R3"
WRITE(*,*)"De las componentes del primer  vector , en la forma rectangular"
READ(*,*)veca(1),veca(2),veca(3)
WRITE(*,*)"en seguida de las componentes del siguiente"
READ(*,*)vecb(1),vecb(2),vecb(3)

! calculos

resp(1)=((veca(2)*vecb(3))- (vecb(2)*veca(3)))
resp(2)=((veca(3)*vecb(1))-(vecb(3)*veca(1)))
resp(3)=((veca(1)*vecb(2))-(vecb(1)*veca(2)))



WRITE(*,*)"los vectores que introdujo fueron:"
WRITE(*,*)veca
WRITE(*,*)vecb

WRITE(*,*)"y su producto punto es",resp


END PROGRAM producto_punto

