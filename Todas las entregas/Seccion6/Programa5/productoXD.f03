!
!! cuarto.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue Apr  9 00:22:57 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 20:44:00 (angela)>
!

! Este programa calcula el producto entre vectores en R3
PROGRAM producto_cruz

! DECLARACION DE VARIABLES
IMPLICIT NONE 
REAL,DIMENSION(3)::vecb,veca,resp   ! arreglos
! vecb   guarda al vector 1 
! veca   guarda al vector 2
! resp   guarda al vector resultante


! IMPRIMIR INSTRUCIONES AL USUARIO, QUE NO SABE QUE HACER SIN ELLAS >=C
WRITE(*,*)"Este programa calcula el producto vectorial, de dos vectores en&
     & R3"
WRITE(*,*)"De las componentes del primer  vector , en la forma rectangular"
READ(*,*)veca(1),veca(2),veca(3)
WRITE(*,*)"en seguida de las componentes del siguiente"
READ(*,*)vecb(1),vecb(2),vecb(3)

! OPERACIONES DEL PROGRAMA...BLIP,BLIP,BLIP

! se obtiene cada componente con determinantes ;) ... y se guardan
! por orden en el arreglo para respuestas
resp(1)=((veca(2)*vecb(3))- (vecb(2)*veca(3)))
resp(2)=((veca(3)*vecb(1))-(vecb(3)*veca(1)))
resp(3)=((veca(1)*vecb(2))-(vecb(1)*veca(2)))


! SE IMPRESIONAN LOS RESULTADOS
WRITE(*,*)"los vectores que introdujo fueron:"
WRITE(*,*)veca
WRITE(*,*)vecb
WRITE(*,*)"y su producto punto es",resp


END PROGRAM producto_cruz
! termino el programa =D
