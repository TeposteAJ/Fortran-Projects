!
!! do1.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp35>
!! 
!! Started on  Tue Feb 26 15:03:11 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-mar-11.lunes 02:42:39 (angela)>
!

!Este programa servira para calcular el factorial =B de algunos
! números u.u 

! Iniciando el programa 
PROGRAM do1

! Declaracion de variables 
IMPLICIT NONE

INTEGER::N             !La variable que dara el usuario
REAL::Nfac=1.          !El resultado
INTEGER::b=1           !Nos auxiliara en los calculos ;)

! Obtencion de datos, por medio del usuario y su teclado 

WRITE(*,*)"Buen día!, introduzca el número entero, al que le quiera ca&
     &lcular factorial"
READ(*,*)N

! Comenzaremos un condicional para descartar de una vez el unico caso
!  especial de 0! 

IF(N==0.)THEN
  
  WRITE(*,*)"La respuesta a 0! es igual a 1"
  WRITE(*,*)"0! = 1 "

! Si no es cero, entonces usaremos un Do, para la " multiplicacion"
! hasta que el ultimo termino multiplicado sea el mismo dado por el usuario

ELSE
      DO b=1,N

      Nfac=Nfac*b                !Este Do nos permite hacer todas las cosas
                                 ! mas faciles,se incrementa por
                                 !  defecto en 1, solo requiere un
                                 !   inicio y un fin


      END DO                     !Termino el DO >=D

! Decirle el resultado que tanto esperaba el usuario... 
  WRITE(*,*)"La respuesta a",N,"! (factorial) es",Nfac               
  WRITE(*,*)N,"! =",Nfac

END IF                                    ! Acabo el condicional 

END PROGRAM do1                           ! Termino el programa c= 

