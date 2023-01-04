PROGRAM if5
! Ultimo programa de esta seccion inicial del if, lo programaremos para que nos diga si hay colinealidad entre 3 puntos


IMPLICIT NONE

REAL::x1,y1,x2,y2,x3,y3     ! Las componentes de las tres coordenadas, todas seran dadas por el usuario
REAL::m12,m13               ! Las pendientes entre un punto y los otros dos

! DE nuevo molestar, y a pedir datos >=D , Ahora seremos claros y ordenados, pidiendo que nos den las coordenadas de la menor a la mayor y separadas por comas

WRITE(*,*)"Introduzca  los valores de su primera cordenada (x,y) separadas por coma"
WRITE(*,*)" NOTA: DEBE COMENZAR POR LA COORDENADA DE VALORES MAS PEQUEÑOS" 
READ(*,*)x1,y1
WRITE(*,*)" Ahora repita lo mismo para la segundas (x,y)"
WRITE(*,*)"NOTA:RECUERDE QUE DEBE SER MENOR EN VALORES,QUE LA ULTIMA COORDENADA"
READ(*,*)x2,y2
WRITE(*,*)"Por ultimo escriba los valores de la tercera coordenada"
READ(*,*)x3,y3

WRITE(*,*)"Las cordenadas que introdujo son :"                                        ! Solo para que verifique , le repetimos los datos 
WRITE(*,*)"(",x1,",",y1,")"
WRITE(*,*)"(",x2,",",y2,")"
WRITE(*,*)"(",x3,",",y3,")"

! Calcular las pendientes, bastara con saber solo dos 
m12= (x2-x1)/(y2-y1)
m13=(x3-x1)/(y3-y1)

! AHOra el condicional , apoyandonos en los resultados de las pendientes
IF (m12 == m13) THEN
  WRITE(*,*)"Los puntos de las coordenadas que introdujo son colineales"

ELSE 
  WRITE(*,*)"Los puntos de las coordenadas que introdujo NO son colineales entre si "

END IF

! Fue bastante sencillo =D , recordar ¬¬ cerrar el condicional


! Fin del programita =B
END PROGRAM if5
 
