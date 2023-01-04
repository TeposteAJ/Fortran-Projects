Program conversion_de_temp
! Un programita básico, para convertir de grados Farhenheit a Kelvins... pero no al revez D=!!!

!Aqui empieza la declaracion de las variables que usaremos
IMPLICIT NONE
REAL::temp_f     !Declaracion de variables para grados fareneheit y kelvin ;)
REAL::temp_k
!Aqui termina la declaración ;D , ya no hay más...

!Ejecución , pedir los datos y despues usarlos junto con las formulas para obtener la respuesta...
! Es el paso donde se debe tener especial cautela =o!!!

WRITE(*,*)"Introduzca la temperatura en grados Farhenheit:" !Enunciado para dar instruciones al usuario
READ(*,*)temp_f  !Aqui se introducira la temperatura que deseas convertir

temp_k=(5./9.)*(temp_f-32.)+273.15 !Formula para hacer el cambio de temparatura, donde se usa el dato que pide arriba ;D 

WRITE(*,*) temp_f, " grados Fahrenheit",temp_k,"Kelvins" ! Aqui mostrara los resultados del programa, es decir las temperaturas en ambas escalas 

! Fin de EJecución , ya se le dio el resultado esperado, a el usuario ;) ... todos somos felices

!Terminación, es como cerrar la puerta del programa 
End Program conversion_de_temp

! Con un poco de suerte ;D el programa ya esta terminado =P 
! Buenas vibras ;) 
