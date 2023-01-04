!
!! program4.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Thu Apr 25 16:52:38 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-06.lunes 00:18:14 (angela)>
!
! Este programa determina si los elementos de una matriz son o no son
!  maximos relativos :E ... es decir son mayores que todos los otros
!   que lo rodean
PROGRAM MAX_RELAT

! DECLARAR VARIABLES
  IMPLICIT NONE
  REAL,ALLOCATABLE,DIMENSION(:,:)::yupyup       ! matriz verdadera
  REAL,ALLOCATABLE,DIMENSION(:)::temp           ! matriz temporal
  INTEGER::k,x,y,i,j                            ! contadores
 CHARACTER::nombrear                            ! nombre archivo
  LOGICAL::a,b,c,d,e,f,g,h                      ! para sentencias necesarias


! IMPRIMIR INSTRUCIONES
WRITE(*,*)" ESTE PROGRAMA DETERMINARA LOS MAXIMOS RELATIVOS DE UNA MATRIZ"
  WRITE(*,*)"NOMBRE DEL ARCHIVO DONDE GUARDA LA MATRIZ"
  READ(*,*)nombrear

! OPERACIONES DEL PROGRAMA
  !ABRIR ARCHIVO >=D
  OPEN(UNIT=54,FILE=nombrear,STATUS="OLD",ACTION="READ")

! Se leen las dimensiones de la matriz
  READ(54,*)x  
  READ(54,*)y

! tamaño de matriz temporal
  k=x*y

! Se declara el tamaño de la matriz temporal
  ALLOCATE(temp(k))

! Se leen los datos del documento y se almacenan temporalmente 
  Do i=1,k
     READ(54,*)temp(i)
END DO

! Se define la matriz real
  ALLOCATE(yupyup(x,y))

! se reacomodan los datos de la matriz temporal, en la verdadera
  yupyup=RESHAPE(temp,(/x,y/))
  

! Los Do nos pasearan por cada uno de los elementos de la matriz para operarlos
 ! NOtese que se empieza en 2 y se termina con un termino antes
  !  porque los perifericos no se operaran pues no estan
  !   completamente rodeados
 DO i=2,y-j
     DO j=2,x-1

! Las sentencias compararan al elemento en el que estamos 

        ! renglon de abajo
        a=yupyup(i,j)>=yupyup(i-1,j-1)               
        b=yupyup(i,j)>=yupyup(i-1,j)
        c=yupyup(i,j)>=yupyup(i-1,+1)
       
        ! elementos de los lados 
        d=yupyup(i,j)>=yupyup(i,j-1)
        e=yupyup(i,j)>=yupyup(i,j+1)

         !elementos del renglon de arriba
        f=yupyup(i,j)>=yupyup(i+1,j-1)
        g=yupyup(i,j)>=yupyup(i+1,j)
        h=yupyup(i,j)>=yupyup(i+1,j+1)

! si todas las condiciones se cumplen entonces :E . .. 
        IF(a.AND.b.AND.c.AND.d.AND.e.AND.f.AND.g.AND.h)THEN
! Entonces se imprime que es maximo relativo c=
           WRITE(*,*)"Es maximo relativo el elemento de renglon:",i,"c&
                &olumna",j
WRITE(*,*)"Su valor es",yupyup(i,j)
        ELSE ! xD
! SI no pues nos pasamos al siguiente
        END IF
     END DO
  END DO

END PROGRAM MAX_RELAT
! TErmina programmita =D .... este programita me gusto mucho, y las
!  sentencias me ahorraron muchos if ... 

