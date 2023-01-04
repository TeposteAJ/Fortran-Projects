!
!! elemento11.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 11:38:38 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 22:18:32 (angela)>
!

! Esta subrutina nos genera dos numeros >=c aleatorios , con
!  distribucion de gausss >=C ... 
SUBROUTINE proba_normal(y1,y2)
IMPLICIT NONE
! Declaracion de variables 
!ARGUMENTOS
REAL,INTENT(OUT)::y1,y2       !los dos datos generados aleatorios
!LOCALES
REAL::x1,x2,r                 ! >=c necesarias para sacar y1 y y2 
REAL::auxi                    ! auxiliar para el rango [-1,1]


! LLamamos a RANDOMNUMBER... para dar valores posivos y negativos a
!  :E x1 y x2 

CALL RANDOM_NUMBER(auxi)
! Esta nos ayudara a tener un rango de (-1,1)

! si esta entre 0 y 1/2 , será negativo >=c 
IF (0<=auxi.AND.1./2.>auxi)THEN
! ahora si llamamos a RANDOM NUMBER :E de nuevo esta vez nos dara el
   ! inicial para x1... el que se será negativo despues---
CALL RANDOM_NUMBER(x1)
x1=-1*x1
!si no ... será positivo 
ELSE
! Se llama a RANDON MUNBER
CALL RANDOM_NUMBER(x1)
END IF 
! se tiene un valor aleatorio entre -1 y 1 para x1


! Lo mismo se repite para x2
! Se vuelve a usar el auxi 
CALL RANDOM_NUMBER(auxi)

IF (0<auxi.AND.1./2.>auxi)THEN
CALL RANDOM_NUMBER(x2)
x2=-1*x2
ELSE
CALL RANDOM_NUMBER(x2)
END IF 

! Ya tenemos los dos valores de x1 y x2.. que tienen una probabilidad
!  uniforma entre -1 y 1 ::: ahora lo que sigue :E ... 

! Calcular r ...
r=(x1**2)+(x2**2)
! Un If para ver si nos serviran esas x1 y x2 
IF (r<1)THEN
! sí sirvieron, entonces se procede a calcular y1 y y2 ... 
y1=(sqrt((-2*log(r))/r))*x1
y2=(sqrt((-2*log(r))/r))*x2

ELSE 
! =c no sirvieron >=C "RETURN" nos llevara otro vez a operar desde el
   !  inicio de la subrutina >=c 
RETURN

! esto puede seguir asi hasta que caiga en la primera condicion ,
!  entonces:E se termina 
END IF
! cierra el IF 

END SUBROUTINE proba_normal
! Termina subrutina ... >=c 
