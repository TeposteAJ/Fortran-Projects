!
!! programa9.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp38>
!! 
!! Started on  Mon May 20 12:25:36 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-26.domingo 18:36:57 (angela)>
!
! programa de prueba, para la funcion para el producto punto 

PROGRAM PRO_PUNTO

  ! DEclaracion de varibales 
  IMPLICIT NONE
  ! Tres arreglos, uno para cada vector y otro que contendra la
  !  respuesta... todos se usan como argumentos en la subrutina 
  REAL,DIMENSION(3)::vec1,vec2,resp

  ! Pedir datos al usuario...
  WRITE(*,*)"===========================================================&
       &==="
  WRITE(*,*)"PROGRAMA-PRODUCTO-VECTORIAL"
  WRITE(*,*)"===========================================================&
       &==="
  WRITE(*,*)"ESTE PROGRAMA CALCULA EL PRODUCTO VECTORIAL, ENTRE DOS VECT&
       &ORES EN R3"
  ! se piden las componente del primer vector
  WRITE(*,*)"A continuación escriba las componentes rectangulares del primer vector"
  WRITE(*,*)"(x,y,z)"
  READ(*,*)vec1(1),vec1(2),vec1(3)
  !las del segundo vector
  WRITE(*,*)"Ahora deme las componentes rectangulares de su segundo vector" 
  READ(*,*)vec2(1),vec2(2),vec2(3)

  !llamar a la subrutina:E que hace toda la operacion :E 
  CALL productop(resp,vec1,vec2)

  ! SE IMPRESIONAN RESULTADOS >=D
  WRITE(*,*)"===========================================================&
       &==="
  WRITE(*,*)"RESULTADO"
  WRITE(*,*)"Sus vectores a usar fueron:"
  WRITE(*,*) vec1
  WRITE(*,*) vec2
  WRITE(*,*)" El vector resultante es :",resp
  WRITE(*,*)"===========================================================&
       &==="

END PROGRAM PRO_PUNTO
!Fin del programa >=c
!NOTA: no se pudo hacer como funcion porque no conocemos modulos, y
!  no era tiempo =c de conocerlos >=c "concentrence en la Sub y Funci"
