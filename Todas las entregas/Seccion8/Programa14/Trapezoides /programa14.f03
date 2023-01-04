!
!! programa14.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 22:19:25 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 01:05:37 (angela)>
!
! PROgrama que prueba que tan bien salio la subrutina de la integral :E
PROGRAM integral_suma
! Declaracion de variables 
REAL,EXTERNAL::fprueba        ! nombre de la funcion, eXternal porque
                              !  no se usa en el programa priincipal
REAL::a,b                     ! intervalo
INTEGER::nu                   ! numero de trapezoides
REAL::resp                    ! valor de la integral

WRITE(*,*)"===========================================================&
     &====="
WRITE(*,*)"PROGRAMA-INTEGRAL"
WRITE(*,*)"===========================================================&
     &====="
WRITE(*,*)"Deme el intervalo de integración [a,b]"
READ(*,*)a,b
WRITE(*,*)"En cuantas partes desea dividir su intervalo"
READ(*,*)nu

! Llamo a la subrutina que hace todo el trabajo :E sucio n_n
CALL suminte(a,b,nu,fprueba,resp)

! IMPRESIONO RESULTADOS
WRITE(*,*)"RESPEUSTAS"
WRITE(*,*)"===========================================================&
     &====="
WRITE(*,*)"El valor de la integral para su intervalo es:,",resp

! FIn de el programa de prueba :E
END PROGRAM integral_suma
