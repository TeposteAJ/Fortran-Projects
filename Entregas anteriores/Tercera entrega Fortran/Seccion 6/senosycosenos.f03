!
!! d.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar 18 10:16:48 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 14:02:56 (angela)>
!

! Este programa servira para calcular los senos y cosenos de 0° a
 ! 360°, con variaciones de 2°... esta info la guardara en un
 ! documento, mismo que se usara despues para graficar...
PROGRAM TABLASENYCOS
! Declarar  variables 
IMPLICIT NONE
REAL::sen,cosen               !valores de seno y coseno
REAL::radi                    !conversion de grados
INTEGER::grad=0               !angulo 
REAL,PARAMETER::pi=3.1416     ! valor de pi    
INTEGER::error                ! saber si hay fallas
CHARACTER(len=33)::nombrear   ! nombre que se le dara al archivo

WRITE(*,*)"Que nombre desea darle a el archivo"
READ(*,*)nombrear


! se abre y crea el archivo, se escribira en el 

OPEN(UNIT=8,FILE=nombrear,STATUS="NEW",ACTION="WRITE",IOSTAT=error)

! Imprimir en el documento, el titulo y los titulosde columnas
WRITE(8,*,IOSTAT=error)"TABLA DE SENOS Y COSENOS"     ! Guardara en el documento
WRITE(*,*)"TABLA DE SENOS Y COSENOS"      ! Se mostrara en pantalla
WRITE(8,*,IOSTAT=error)"Angulo       ","      Seno","         Coseno"        ! se guardara en eldocumento
WRITE(*,*)"Angulo        ","    Seno      ","      Coseno"   
  ! mostrara en pantalla 

! Do, para los valores de los angulos 

DO grad=0,360,2

Radi= (grad*pi)/180.
Sen=sin(radi)
Cosen=cos(radi)

WRITE(*,*)grad,sen,cosen                  ! Se imprimira en pantalla
WRITE(8,*,IOSTAT=error)grad,sen,cosen                  ! Guardara en el doc


END DO
!Termino del DO

CLOSE(8)                                  !Se cierra el documento

! Fin del programa 
END PROGRAM TABLASENYCOS
