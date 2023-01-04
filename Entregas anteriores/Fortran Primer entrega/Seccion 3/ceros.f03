PROGRAM ceros
!El fin de este programa es encontrar solucion a una ecuacion de primer grado,
!La estrategia es despejar x >.<
! =B ... go!, go! go!, comenzemos 

IMPLICIT NONE
! Las variables que usaremos son 3 , una es el coficiente de la variable (a),
! La siguente es la constante (b) y por último (x) donde se guardara la respuesta

REAL::a,b    ! Necesario ser dados los valores por el usuario
REAL::x

 
! Ahora se piden los datos necesarios al usuario C= de forma clara

WRITE(*,*) " Siendo ax+b=0, introduzaca el valor de su a"
READ(*,*)a
WRITE(*,*) " Ahora introduzca el valor de la constante b"
READ(*,*)b
! A trabajar =D , con los datos que nos dieron, las operaciones necesarias 
! para resolver el problema y guardar el resultado para dar la respuesta

x=-b/a

! Decirle la respuesta al usuario, es necesario usar alguna frase que le indique que esa es

WRITE(*,*)X," es la solución que satisface el polinomio"


END PROGRAM ceros 
! Fin del programa, ;) nada dificil hasta ahora =B 