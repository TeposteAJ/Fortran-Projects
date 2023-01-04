Program if_0

! Este es el primer programa de condicinales que complilare, funciona para ordenar hacer una u otra cosas, si se cumplen determinadas condiciones
! es un arreglo del programa para la ecuacion cuadratica de la seccion anterior, ahora podra calcular números complejos

IMPLICIT NONE


REAL:: a,b,c       ! los coheficiente de las ecuaciones
REAL::discr        ! el valor de la parte de raíz en de la "formula general" C= ... la bienaventurada formula general
REAL:: x1,x2       ! los dos valores de las raices 
REAL::im1,im2,re   ! ;) otros necesarios para los casos de raices complejas =B ...you know!


! A pedir los datos al usuario, devemos de ser cuidadosos y asegurarnos de que nos entiendan, y nos den los valores que necesitamos

WRITE(*,*) " Siendo A*x² + B*x + C = 0 , denos el coeficiente A :"     
READ(*,*)a
WRITE(*,*)" ahora siguiendo la misma ecuacion denos el valor de B"
READ(*,*)b
WRITE(*,*)"Por ultimo que valor desea darle a C "
READ(*,*)c
WRITE(*,*)" La ecuacion que usted introdujo es",a,"*x²+",b,"*x+",c,"=0."

! Antes de seguir es importante hacer este pequeño calculo del discriminante de la formula general, para déspues usar esté en las condiciones

discr=(b*b)-(4*a*c)

! Con ayuda del condicional "if" daremos los terminos a cumplir para los posibles tres casos en las soluciones, complejas o reales ;)

IF (discr > 0.) THEN                             ! Si el discriminante es mayor que cero , se ejecutaran las siguientes ordenes
 x1=(-b+ sqrt(discr))/(2*a)                  
 x2=(-b- sqrt(discr))/(2*a)

   WRITE(*,*)"Las raices de su ecuacion son:"    ! Dar las respuestas al usuario, son dos =D!!! :E
   WRITE(*,*)"Primera raíz:",x1 
   WRITE(*,*)"Segunda raíz:",x2

ELSE IF (discr < 0.) THEN                        ! Si el primero no funciono =c, preguntamos ahora si el discriminante es menor que cero
                                                 ! y hacemos ahora las siguientes ordenes >=)...

 im1= sqrt(abs(discr))/(2*a)
 re=-b/(2*a)
 im2= -sqrt(abs(discr))/(2*a)
   WRITE(*,*)"Las raices de su ecuación son:"    ! Entrega de resultados, será un poco más largo, pues son numeros imaginarios
   WRITE(*,*)"Primera raíz:(",re,"+",im1,"*i)"
   WRITE(*,*)"Segunda raíz:(",re,"+",im2,"*i)"
 
                                                ! Si ni uno ni otro funciono, entonces tomaremos esto, NO ES NECESARIO PONER Condiciones , Si no sirvieron 
												! los otros no hay de otra, de lo contrario dira "BAsura inesperada " o algo asi ¬¬! 
ElSE 
 x1=-b/(2*a)
 x2=-b/(2*a)
   WRITE(*,*)"Las raices de su ecuación son:"  ! ES el caso más sencillo
   WRITE(*,*)"Primera raíz:",x1                ! Se dan los resultados 
   WRITE(*,*)"Segunda raíz:",x2
END IF 


! Indicar que el condicional se acabo
! Asi tambien indicar que el programa ya acabo ;) seamos felices =B tenemos la version mejorada de el primer programa que resuelve estas ecuaciones >=D

END PROGRAM if_0
