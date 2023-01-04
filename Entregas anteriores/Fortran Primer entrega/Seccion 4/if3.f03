PROGRAM if3
! Tercer programa de los condicionales , ahora lo que variara con respecto al anterior es que tendremos dos variables O.o!!!

IMPLICIT NONE
! aarrrgghh! >=c a declarar todas las variables juntas y pegadas jum! >=c 
REAL::FG,x,y

! una nueva manera de introducir datos, separados con coma, pero hay que hacerlo evidente, para evitar confuciones

WRITE(*,*)"Introduzca el valor de'x' y de'y', separados por una coma"
WRITE(*,*)"Ejemplo: 3,7 "
READ(*,*)x,y

!Ahora se creara el condicional y los calculos que no difieren en gran medida a los del problema anterior

IF (x>=0..AND.y>=0.) THEN                                                         ! El mayor igual a cero,parece una carita molesta >=0 jajaja
   FG=x+y
  WRITE(*,*)"La funcion es F(x)=x+y y el resultado para (",x,",",y,") es",FG

ELSE IF (x>=0..AND.y<0.)THEN
   FG=x+(y**2)
   WRITE(*,*)"La funcion es F(X)=x+y² y el resultado para (",x,",",y,") es",FG

ELSE IF (x<0..AND.y>=0.)THEN
   FG=(x**2)+y
   WRITE(*,*)"La funcion es F(x)=x²+y y el resultado para (",x,",",y,") es",FG

ELSE 
   FG=(x**2)+(y**2)
   WRITE(*,*)"La funcion es F(x)=x²+y² y el resultado para (",x,",",y,") es",FG

END IF                                                                            ! Cerrar el condicional... =B



END PROGRAM if3                                                                   ! Cerrar el programa, no hubo muchas novedades en este problema
