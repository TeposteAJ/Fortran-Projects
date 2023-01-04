!
!! do3.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp35>
!! 
!! Started on  Tue Feb 26 16:16:48 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-mar-10.domingo 23:36:01 (angela)>
!
! Este es el tercer programa en DO, y sirve para calcular el
! aproximado de Sen (x), con  el mismo margen de error que el de la
! función intrínsica en FORTRAN... good luck! ANgie ;)

!Inicia programa
PROGRAM do3

!Variables =s, que no sobre y que no falten
IMPLICIT NONE

REAL::grad,radi                                 !grados que
                                                ! introducira el
                                                ! usuario y para el cambio a radianes
REAL,PARAMETER::pi=3.141592654                  !valor de pi,es fijo
REAL::misen=0,senv                              !guardara el resultado
REAL::z1,y2                                     !para aligerar las operacion

REAL::N,Nfac=1,b=1,c                            !variables para el factorial
REAL::E                                         !diferencia entre los senos
 

! USUARIO >=C dame datos si quieres que opere ;)

WRITE(*,*)"Usuario si desea conocer el valor de sen(x) , introduzca"
WRITE(*,*)"el valor de x"
WRITE(*,*)"IMPORTANTE:considere que x, es un valor en grados"
READ(*,*)grad



! Antes que nada hay que hacer la debida conversion de grados radian
      
     radi=(grad*pi)/180.

!Ahora bien comenzemos con lo bueno >=D...Un DO para la sumatoria ,
!donde b variara ... hasta x condición 

DO
   z1=(-1.)**(b-1.)               ! Para aligerar las formulas la
                                  !  descompongo en unas mas pequeñitas
   y2=radi**((2.*b)-1.)           ! y estas seran las que use en la
                                  ! formula grande;), menos complejo
   N=(2.*b)-1.                   
   
   Nfac=1.
   c=1.
! esto se pondra interesante puesto que necesitaremos "introducir" el
! programa o casi todo lo que escribimos para el programa anterior
! de factorial

                 IF (N==0.)THEN
                     NFac=1.
                 ELSE
                       DO WHILE (N==c)
                         Nfac=Nfac*c
                         WRITE(*,*)"El factorial  para",c,"es",Nfac
                         ! Imprimi el pantalla el resultado, solo
                         ! para asegurarme que el programa estaba
                         ! haciendo algo u.u, 
                           
                              c=c+1.
                       END DO
                 END IF 
! Ahora si podemos usar los datos y calculos anteriores  para la sumatoria


   misen=z1*(y2/Nfac)             ! Aqui introducir todo lo que  calculamos arriba

   senv=sin(radi)                 ! condicionar para que senx valga igual que la intrinseca 

    E= senv - misen
      IF(E==0.01)EXIT
          b=b+1.

END DO
! Termina el Do, imprimir los resultados 

WRITE(*,*)"El resultado de sen(x) para el valor en grados que dio es"&
     &,misen
WRITE(*,*)" El valor aproximado",misen,"El valor de sen en la funcion &
     &intrinseca en FOrtran",senv


END PROGRAM do3
! Fin del programa


!NOTA: Nunca sirvio bien el programa =CCCCCC! , lo intente corregir,
! pero ya no logre hacer nada más... luego me di cuenta que se tenia
!  que pedir el numero de termino a el usuario, y lo deje asi, aunque
!   debo admitir que me gustaria que funcionara u.u
