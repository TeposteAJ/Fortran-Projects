!
!! elemento.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Tue May 21 23:25:50 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 16:26:10 (angela)>
!

! Esta >=D es la primera funcion n_n que implementare :E que emoo!!!
! =D
! La funcion nos permitirá simular n_n el lanzamiento de un dado :E,
!  auxiliandonos de la subrutina "RANDOM_NUMBER"... 


REAL FUNCTION dado() ! uuuuh! =o una funcion n_n
! >=c no necesita =o ningun argumento... salvo el valor que saldra y
  !  este mismo es el nombre de la funcion n_n no como en la subrutina
! Fuciones >=c no tiene argumentos "INTENT(OUT)"
IMPLICIT NONE 
! Declaración de variables locales
REAL::x             ! Real que lo usaremos para tener el valor :E aleatorio

! Llamamos a la subrutina RANDOM NUMBER >=c que descubrimos que no es
!  tan RANDOM >=Cjuuuum! :E 
CALL RANDOM_NUMBER(x)
! notese que esta vez es una variable real >=) y no un arreglo ;) 


! Condicionaremos el valor para poder :E darle  valores >=c enteros
!  ... dividimos el intervalo de 0 a 1 ... y asi me di cuenta de lo
!   inteligentes que fueron los que decidieron que el rango fuera
!    este [0,1] es fácil :E de didividir para generar cualquiera :E
!     con fracciones n_n es maravilloso

! en el intervalo de 0 a 1/6 :E es 1 
IF (0<x.AND.x<=1./6.) THEN
dado=1.
!en el intevalo de 1/6 a 2/6 es :E 2 c=
ELSE IF(1./6.<x.AND.x<=2./6.)THEN
dado=2.
! y asi en los siguiente =D 
ELSE IF (2./6.<x.AND.x<=3./6.)THEN
dado=3.
!...
ELSE IF (3./6.<x.AND.x<=4./6.)THEN
dado=4.
!...
ELSE IF (4./6.<x.AND.x<=5./6.)THEN
dado=5.
! Para el utimo no tengo que escribir >=c .. es solo lo que queda 
ELSE 
dado=6.
END IF
! cerrar ;) el IF 

RETURN
! no se para que sirve D= el Retun... >=c .. pero lo puse :E para ver
!  si se pintaba de Rojito :E y si funciono :E 

END FUNCTION dado
! Termino mi primera funcion =')... que felicidad n_n 
