!
!! programa8.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 00:08:19 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 16:39:43 (angela)>
!
! Este programa simula el lanzamiento de un dado >=c... (pero te da
!  los mismos resultados =c...
PROGRAM dadoss
  ! Declaración de variables
  IMPLICIT NONE
  REAL::dado              ! nombre de la funcion >=c necesario para
  !  poderla usar   
  REAL::datoal            ! >=c tonterías no es necesaria :E
  INTEGER::op             ! para darle opciones al usuario :E 


  ! INSTRUCIONES PANTALLA 
  WRITE(*,*)"===========================================================&
       &==="
  WRITE(*,*)"PROGRAMA-DADO"
  WRITE(*,*)"===========================================================&
       &==="
  WRITE(*,*)"SOY UN PROGRAMA QUE SIMULA EL LANZAMIENTO DE UN DADO"
  WRITE(*,*)"¿Desea ponerme a prueba?"
WRITE(*,*)"_____________________"
WRITE(*,*)"I Sí --- tecleé 1   I"
WRITE(*,*)"I No --- tecleé 2   I"
WRITE(*,*)"_____________________"

! VEamos que quizo el usuario :E ...
  READ(*,*)op

 ! :E no se necesita esto >=c!
  !datoal=dado()
  ! :E

! Si dijo que sí entonces :E 
  IF (op==1) THEN
     DO 
        WRITE(*,*)"El dado lanzado , arrojo el numero:",dado()
        WRITE(*,*)"¿Desea volverlo a lanzar"
        READ(*,*)op
        IF(op==1) cycle
        IF(op==2) EXIT
     END DO
! Si dijo que no >=c
  ELSE IF (op==2)THEN
     WRITE(*,*)"Que tenga un lindo día"
! D= Si dijo otra cosa >=c a regañarlo
  ELSE
     WRITe(*,*)"Vuelva a intentar correr el programa y elegir un numero ent&
          &ero entre 1 y 2"
  END IF

! Termino el programa n_n 
END PROGRAM dadoss
