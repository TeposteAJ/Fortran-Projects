!
!! programa13.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 18:42:47 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 00:24:23 (angela)>
!
! PROGRAMA :E que encuentra raíces n_n de un polinomio... dado por
!  una funcion :E, será fácil cambiar la funcion en caso de que asi
!   se desee :E 
PROGRAM raicess
  ! Declaracion de variables 
  IMPLICIT NONE
  REAL,EXTERNAL::prueba      ! nombre de la funcion 
  REAL::a,b!,m,n             ! intervalo en donde se encuentra una raíz
  REAL::ra                   ! guarda valor de raíz


! IMPRESIONAN LAS INSTRUCIONES :E 
  WRITE(*,*)"========================================================================="
  WRITE(*,*)"PROGRAMA-BISECCIÓN"
  WRITE(*,*)"========================================================================="
  WRITE(*,*)"Este programa encuentra la raiz de una funcion =o" 
  WRITE(*,*)"Deme un intervalo donde este la raíz"
  READ(*,*)a,b

! SE llama a la subrutina >=c que calcula la Raíz
  CALL raiz(a,b,ra,prueba)

  ! iMPRIMIR RESULTADOS,segun lo que arroje la subrutina >=c
WRITE(*,*)" RESULTADOS"
WRITE(*,*)"========================================================================="
  IF (ra==123456)THEN
     WRITE(*,*)"En el intervalo proporcionado, no exite raíz "
     !WRITE(*,*)"Se uso el intervalo",m,n
     !WRITE(*,*)"La raiz fue:",ra
  ELSE IF (ra==1000.1119)THEN
     WRITE(*,*)"No fueron suficientes las iteraciones hechas, para encontra&
          &r la raíz, pruebe con un intervalo más pequeño"
  ELSE
     WRITE(*,*)"La raíz es:",ra
  END IF

! -.- No sabía que dentro de las subrutinas tb se podia poner WRITE(
  !  pude ahorrarme estos IF >=C!" 
END PROGRAM raicess
 ! FIn del programa :E
