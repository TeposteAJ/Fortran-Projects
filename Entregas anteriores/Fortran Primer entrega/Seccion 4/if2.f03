Program if2

! Un programa muy básico , de una función =B con condiciones 

IMPLICIT NONE
REAL::x,Fax
! solo hubo una variable por declarar, ahora a pedir al usuario el valor de esa variable :E

WRITE(*,*)"Qué valor desea asignar a x?"
READ(*,*)x

! Iniciar el "If" y establecer la primera condicion, no importa el orden =B de las condicones para este caso
IF ( x.LE.0.) THEN                                    ! Tuve que usar los operadores logicos con letras porque se me presentaron problemas con los otros >=C
     Fax=-1.*x                                        ! pero ya supe que error cometia B)
     WRITE(*,*)" el valor para x es",Fax

! OK! C= la de arriba no sirvio, probemos con esta ;) 

ELSE IF ( 0..LT.x.AND.x.LT.1.)THEN                    ! Igual ademas de los operadores logicos , agrege un AND para poder seguir usando los como arriba >=c
     Fax=x**2
     WRITE(*,*)"el valor de x es",Fax

ELSE                                                  ! Si nada de lo anterior sirvió, entonces hacemos esto 
     Fax=1.
     WRITE(*,*)"el valor proporcionado es",Fax

END IF                                                ! Cerrar el condicional ;)

END PROGRAM if2                                       ! Cerrar programa =D
! Apesar de ser un programa sencillo, me dio mucho problemas en los errores en los "ELSE" ... ESpero y sirva =s , se me hizo muy sencillo hacerlo 
