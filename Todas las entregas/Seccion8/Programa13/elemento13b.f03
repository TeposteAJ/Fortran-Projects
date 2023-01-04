!
!! elemento13b.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 16:56:43 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-27.lunes 00:40:46 (angela)>
!
! Esta subrutina aplica iteraciones, para llegar a un aproximado de
!  una raiz :E 
SUBROUTINE raiz(a,b,ra,fun)
  ! Declaracion de variables
  IMPLICIT NONE
  ! ARGUMENTOS 
  REAL,INTENT(INOUT)::a,b  ! intervalo :E donde esta la raíz
  REAL,INTENT(OUT)::ra     ! raiz 
  REAL,EXTERNAL::fun       ! funcion 
  !LOCALES 
  REAL::ra1,ra2            ! raices provicionales :E de cada extremo
  REAL::mm                 ! auxiliar guarda el corte :E 
  INTEGER::i               ! contador 

  ! NOTA: el numero de iteraciones esta fijo :E pero puede modificarse

  ! Se calculan los valores de los intervalos =o y se establecen condiciones
  ra1=fun(a)
  ra2=fun(b)

  ! primera condicion , manos a la obra :E , si sirve el intervalo 
  IF ((ra1<0.AND.ra2>0).OR.(ra2<0.AND.ra1>0))THEN
     ! si son diferentes de 0 f(a) y f(b)
     DO i=1,1000                     ! 1000 iteraciones
        ! valor medio >=) 
        mm=(a+b)/2.
        ! >=c se vuelve a sacar raíces 
        ra=fun(mm)
        ra1=fun(a)
        ra2=fun(b)
        ! COMO UNA APARTE: SI YA DA UN VALOR DE 0.00001 cualquier raíz n_n
        !  tomar ese valor :E y dejar el DO

        IF((ra1<=0.00001.AND.-0.00001<=ra1).OR.(ra<=0.00001.AND.-0.00001&
             &<=ra).OR.(ra2<=0.00001.AND.-0.00001<=ra))EXIT
        ! Si ra1 y ra son diferentes en signo ...entonces
        IF((ra<0.AND.ra1>0).OR.(ra>0.AND.ra1<0))THEN
           ! Tomas cambias el valor de b ... por el de mm
           b=mm
        ELSE
           ! Si no seguro >=C es al revez... entonces a= al valor de mm
           a=mm
        END IF
     END DO
     ! termino el DO:E 


     ! D= Para saber cual era la raíz , si el programa :E termino antes de
     !  las 1000 iteraciones :E 
     ! si llevo el contador al limite >=C no fueron suficientes..darle
     !  valor para luego arreglarlo 
     IF(i==1000)THEN
        ra=1000.1119
        ! Si ra era la más pequeña >=cc ... entonces mm era la raíz
     ELSE IF(ra<ra1.AND.ra<ra2)THEN
        ra=mm
        ! si Ra1 era la más pequeña...entonces el ultimo a es la raíz
     ELSE IF (ra1<ra.AND.ra1<ra2)THEN
        ra=a
        ! Si no ... la raíz tiene que ser afuerzas el ultimo valor de "b"
     ELSE 
        ra=b
     END IF

     ! Segunda condicion  =o si es igual ra1
  ELSE IF (ra1==0)THEN
     ra=ra1 
     ! no tiene caso encontrar la raiz si es el mismo ra1
     ! tercera condicion :E 
  ELSE IF(ra2==0)THEN
     ! la raíz es igual a ra2
     ra=ra2

     ! si se acabaron las iteraciones >=C ... se le avisara que no fueron suficientes
  ELSE 
     ra=123456
  END IF
  ! Termine el IF PRincipal 
END SUBROUTINE raiz
! Termina la subrutina 
