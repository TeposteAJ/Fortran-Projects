!
!! programa7.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue May 21 00:19:13 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 15:53:04 (angela)>
!

! Con este programa se compara :E la desvacion y la media aritmetica
!  entre un conjunto de datos aleatorios...con probabilidad uniforma
PROGRAM distribucion 

!Declaración de Variables
IMPLICIT NONE

REAL,DIMENSION(1000)::yupyup         ! arreglo que alojara los datos aleatorios
REAL::i                              ! desviacion teorica
REAL::desviacion,media               ! respuestas... 


! PROGRAMA... Calculos

! Se llama a la subrutina, intrinseca que genera los datos
!  aleatorios:E (Me intriga saber como funciona D= ?)
CALL RANDOM_NUMBER(yupyup)
! solo es necesario usar como argumento una matriz, o una variable
!  real.En nuestro caso será una matriz...


! Ahora se llama a la subrutina "elemento2.o" que nos ayuda ;) a
!  hacer los calculos n_n de la media y desviacion =o .. n_n que util
!   es no tener que reescribir o copear >=D el codigo n_n solo llamar
!    la subrutina... las amo <3
CALL aritmetrica(yupyup,1000,media,desviacion)
! NOta: lo difici >=c es recordar >=c como pusiste los argumentos ;)
!  jajaja pero puedo revisarse ;)
 
! calculo de la desviacion ;) teorica (este paso pudo ser evitado...
! peroo meeeh! >=D ya lo hice asi -.-

i=1./(sqrt(12.))

! IMPRIMIR LOS RESULTADOS
WRITE(*,*)"===========================================================&
     &"
WRITE(*,*)"PROGRAMA-DISTRIBUCION UNIFORME"
WRITE(*,*)"===========================================================&
     &"
WRITE(*,*)"Este programa genera 1000 datos aleatorios con distribucion&
     & uniforme y calcula su media y desviacion para comparalo con la teoria"
WRITE(*,*)"===========================================================&
     &"
WRITE(*,*)"RESULTADOS"
WRITE(*,*)"===========================================================&
     &"
WRITE(*,*)"LA MEDIA ARITMETICA ES :",media
WRITE(*,*)"LA MEDIA TEORICA ES:      0.5"
WRITE(*,*)"LA DESVIACION CALCULADA ES   :",desviacion
WRITE(*,*)"LA DESVIACION TEORICA ES :    ",i
END PROGRAM distribucion
