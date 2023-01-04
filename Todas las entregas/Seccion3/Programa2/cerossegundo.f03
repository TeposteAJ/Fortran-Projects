PROGRAM ceros_segundo
! El nombre nos idica que el programa sirve para calcular los ceros, en una ecuacion de segundo grado
! al menos para mi suena logico =P!!!

IMPLICIT NONE
! Lo que difiere en las variables estas y las del programa de ceros de primer grado, es que 
! fue necesario agregar dos x, por el numero de raices que tiene, y además para facilitar 
! las operaciones tambien agrege una "y" :E 

REAL::y,a,b,c,x1,x2    ! Las que dara el usuario son a,b,c

!A pedir datos >=D, fastidiemos a los usuarios...

WRITE(*,*) "Siendo ax²+bx+c==, introduzca el valor de a"
READ(*,*)a
WRITE(*,*)"Ahora introduzaca el valor de b"
READ(*,*)b
WRITE(*,*) "Por último introduzca el valor de la constante c"
READ(*,*)c

! Las operaciones que de inicio parecian muy largas , Gracias al tip de Cobos c= de separala por 
!partes , resulto pan comido.... PERO NO CALCULA NUMEROS COMPLEJOS

y=sqrt((b**2)-4*a*c)    ! Cuando "y" es una raiz negativa, el programa falla, y la computadora explota =c
x1=(-b+y)/(2.*a)
x2=(-b-y)/(2.*a)

! Ya tengamos piedad del usuario y demosle la respuesta ;) 

WRITE(*,*) x1,"La primera raiz",x2,"la segunda raiz"

! TErminado =D Fin , me esta gustando programar.
END PROGRAM ceros_segundo
