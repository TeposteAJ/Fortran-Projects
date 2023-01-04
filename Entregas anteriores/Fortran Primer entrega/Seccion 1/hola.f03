Program Hola_0
!Este programa es para dar la bienvenida a un usuario, y será el primero de muchos,
! Se supone es lo primero que programas siempre, pero ya habia programado antes, y no 
! no me habia tocado esto =) , jajaja esta simple pero divertido.

IMPLICIT NONE
CHARACTER(len=70):: Nombre   ! almacenara el nombre del usuario, el que esta limitado por 70 letras

!NOTA: No llevan separacion los nombres a menos que los pongas entre comillas

! Preguntas personales al usuario >=)... preguntas personales

PRINT*," Buen día, con ayuda del teclado escribe por favor tu nombre "
READ *,Nombre

! ahora a contestarle, usemos la informacion que nos dio >=) muajaja

PRINT*,"Hola",Nombre
PRINT*,"Bienvenido al curso de Fortran!"

! ME agrada mas usar WRITE en ves de PRINT ... =/ 

! SE termino el programa, más simple que he hecho ;) 

End Program Hola_0

