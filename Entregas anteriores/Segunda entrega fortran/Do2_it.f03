!
!! do2.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp35>
!! 
!! Started on  Tue Feb 26 15:50:40 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-mar-11.lunes 02:46:45 (angela)>
!
!Este programa, fue el primero ='D con el que vimos "DO", lo hicimos
! todo juntos en clase... ideal para para sumar los primeros x naturales

PROGRAM do2

!Variables
IMPLICIT NONE

INTEGER::N                !Número que nos limitara y dara el usuario
INTEGER::suma=0           !Resultado suma
INTEGER::b=0              !Auxiliara y permitira realizar el calculo

! Comenzemos >=), pidiendole al usuario....
WRITE(*,*)"Hola! Usuario,puedo calcular la suma de los primeros números naturales.."
WRITE(*,*)" hasta qué número deseas obtener la suma"
READ(*,*)N

! Usaremos el DO para hacer la suma descrita, anteriormente... nos
!  permite tener resultados y almacenarlos para usarlos donde mismo , 
! hasta cumplir ciertas condiciones

DO b=0,N                 ! Do iterativo, inicia en 0 y termina en el
                         !  valor asignado a N
  suma=suma+b

  

END DO                   !termino el DO


! Digamos al usuario lo que desea leer =B, su respuesta
WRITE(*,*)"El resultado de sumar todos los primeros",N,"naturales es"
WRITE(*,*)suma

END PROGRAM do2
! yehi! =B termino este pequeñito programa 
