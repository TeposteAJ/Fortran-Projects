!
!! program3.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Thu Apr 25 15:22:06 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-06.lunes 13:30:43 (ajteposte)>
!
! Este programa efectua la multiplicacion de matrices, siempre y
!  cuando esta este permitida entre ellas...
PROGRAM MULTIP_MATRICES

  ! DECLARACION DE VARIABLES 
  IMPLICIT NONE
  REAL,ALLOCATABLE,DIMENSION(:,:)::matrix1,matrix2,matrix3
  REAL,ALLOCATABLE,DIMENSION(:)::Temporal
  INTEGER::x,y,k,m,n,b,i,j,p,l
  REAL::suma=0
  CHARACTER::nombrear
  ! IMPRESION DE INSTRUCIONES
  ! INICIAMOS :B
  WRITE(*,*)"BIENVENIDO!, este programa realiza multiplicaciones de matrices"
  WRITE(*,*)"CUAL ES EL NOMBRE DONDE GUARDA LA PRIMERA MATRIZ? " 
  READ(*,*)nombrear

  ! abrir archivo
  OPEN(UNIT=8,FILE=nombrear,STATUS="OLD",ACTION="READ",IOSTAT=b)
  ! Se leera el tamaño de renglones y columnas
  READ(8,*,IOSTAT=b)x
  READ(8,*,IOSTAT=b)y

  ! DEFINIR TAMAÑO DE LA MATRIZ TEMPORAL
  k=x*y
  ALLOCATE(Temporal(k))
  ! Se almacenan los datos en la matriz temporal
  DO i=1,k
     READ(8,*)Temporal(i)
  END DO
  ! Se reacomodan en otra matriz
  ALLOCATE(matrix1(x,y))
  matrix1=RESHAPE(Temporal,(/x,y/))
  ! Se vuelve a reiniciar los valores para la matrix temporal ... 
  DEaLLOCATE(Temporal)


  ! Ahora se pregunta por la segunda matriz
  WRITE(*,*)"CUAL ES EL NOMBRE DE LA SEGUNDA MATRIZ?"
  READ(*,*)nombrear
  ! abrir el segundo archivo
  OPEN(UNIT=10,FILE=nombrear,STATUS="OLD",ACTION="READ",IOSTAT=b)
  ! Se leera el numero de renglones y columnas
  READ(10,*,IOSTAT=b)m
  READ(10,*,IOSTAT=b)n
  ! Definir nuevo tamaño de la matrix temporal 
  k=m*n
  ALLOCATE(Temporal(k))
  ! Se almacenan los datos 
  DO i=1,k
     READ(10,*)Temporal(i)
  END DO

  ALLOCATE(matrix2(m,n))

  matrix2=RESHAPE(Temporal,(/m,n/))

  !Condicion para saber si pueden multiplicarse
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  IF(y==m) THEN
     ALLOCATE(matrix3(x,n))
     Do j=1,x ! hasta las columans en matrix1, esta rarito
        DO p=1,n
           suma=0
           DO l=1,y

              suma=suma+(matrix1(j,l)*matrix2(l,p))


           END DO
           Matrix3(j,p)=suma
        END DO
     END DO
! Otra manera de hacer el programa es usando FORALL
! FORALL(j=1:x,p=1:n)
!C(j,p)=DOT_PRODUCT(A(j,:),B(:,p))
! END FORALL
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! IMPRIMIR RESULTADOS :E 
     WRITE(*,*)"MATRIZ OBTENIDA"
     WRITE(*,*)matrix3


    ! Para comprobar se usa la funcion intriseca
        matrix3=MATMUL(matrix1,matrix2)

        WRITE(*,*)"COMPROBACION DE RESULTADO"
        WRITE(*,*)matrix3

     ELSE
        ! si no se cumplio la condición
        WRITE(*,*)"El tamaño de las matrices, imposibilita operar con ellas...&
             &no esta definida la operacion para tales situaciones"
     END IF

     ! Acabo el programa 
   END PROGRAM MULTIP_MATRICES
