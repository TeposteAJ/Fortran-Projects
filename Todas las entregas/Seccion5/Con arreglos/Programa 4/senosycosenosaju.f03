!
!! d.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar 18 10:16:48 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 13:22:06 (angela)>
!

! Este programa servira para calcular los senos y cosenos de 0° a
 ! 360°, con variaciones de 2°... esta info la guardara en un
 ! documento, mismo que se usara despues para graficar...
PROGRAM TABLASENYCOS
! Declarar  variables 
IMPLICIT NONE

REAL::radi                    !conversion de grados
INTEGER::grad=0               !angulo 
REAL,PARAMETER::pi=3.1416     ! valor de pi    
INTEGER::error                ! saber si hay fallas
CHARACTER(len=33)::nombrear   ! nombre que se le dara al archivo
REAL,DIMENSION(3,181)::array
INTEGER::i=0

WRITE(*,*)"Que nombre desea darle a el archivo"
READ(*,*)nombrear


! se abre y crea el archivo, se escribira en él 

OPEN(UNIT=8,FILE=nombrear,STATUS="NEW",ACTION="WRITE",IOSTAT=error)

! Imprimir en el documento, el titulo y los titulosde columnas


WRITE(8,*)"Angulo","                Seno            ","Coseno"        ! se guardara en eldocumento


! Do, para los valores de los angulos 
grad=0

DO i=1,181

   
Radi= (grad*pi)/180.

array(1,i)=grad
array(2,i)=sin(radi)
array(3,i)=cos(radi)


grad=grad+2

END DO
!Termino del DO
DO i=1,181
WRITE(8,*)array(1,i),array(2,i),array(3,i)
END DO

CLOSE(8)                                  !Se cierra el documento

! Fin del programa 
END PROGRAM TABLASENYCOS
