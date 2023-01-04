!
!! program2.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Thu Apr 25 16:49:11 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-05.domingo 22:35:18 (angela)>
!

!Este programa nos permite realizar los promedios de una matriz, de
! cada renglon y de cada columna..,
PROGRAM RENGLONES_COLUMNAS 

! DECLARACION DE VARIABLES
  IMPLICIT NONE

  REAL,ALLOCATABLE,DIMENSION(:)::yupyup       ! almacena los datos temporalmente
  REAL,ALLOCATABLE,DIMENSION(:,:)::lop        !alacenara los datos
  INTEGER::renglones,columnas                 ! # de renglones y columnas
INTEGER::b,k,i,j                              ! contadores
  REAL::suma,promedio                         ! guardara resultados
  CHARACTER::nombrear                         ! nombre del archivo

  ! INCIAMOS :)
! IMPRIMIR INSTRUCIONES PARA DARLE SENTIDO A LA VIDA DEL USUARIO 

  WRITE(*,*)"CUAL ES EL NOMBRE DEL ARCHIVO QUE DESEA OPERAR"
  READ(*,*)nombrear


!OPERACIONES DEL PROGRAMA 

  ! SE abre el archivo
 OPEN(UNIT=33,FILE=nombrear,STATUS="OLD",ACTION="READ",IOSTAT=b)

  ! Se leera el tamaño de renglones y columnas 
 READ(33,*,IOSTAT=b)renglones
 READ(33,*,IOSTAT=b)columnas
 
! Por si si o por si no se le avisa al usuario los datos :E maás vale
 !  que este prevenido
  WRITE(*,*)"Las dimensione  x=mod(i,2)s de su matriz serán:"
  WRITE(*,*)renglones,"renglones"
  WRITE(*,*)columnas,"columnas"

! el tamaño de la matriz se calcula :E 
  k=columnas*renglones

! se declara el tamaño dela matriz temporal
  ALLOCATE(yupyup(k))

! Se asignan valores a la matriz temporal
  DO i=1,k
     READ(33,*)yupyup(i)
  END DO


!Ahora se define el tamaño de la matriz "real"
  ALLOCATE(lop(columnas,renglones))

! Se asignan valores con la funcion "RESHAPE", la que reacomodara
  !  todos los datos de la matriz temporal en la nueva matriz
  lop=RESHAPE(yupyup,(/columnas,renglones/))

!! NOTA: Mi matriz quedo transpuesta, y por eso los calculos los
  !!  inverti, me di cuenta muy tarde ... pero da los resultados bien
  !!  , es decir >=D el usuario nunca se entera, y obtiene lo que
  !!   quiere >=B !!!

!Se calcula el promedio por columnas y al mismo tiempo se imprimen
  ! los resultados 

  WRITE(*,*)"PROMEDIO DE LAS COLUMNAS:"

  DO j=1,columnas
! antes se seguir con una columnas se vuelve a 0 la suma 
     suma=0
! de esa columna se sumaran todos los renglones 
     DO i=1,renglones
        suma=lop(j,i)+suma
     END DO
! esta suma se divide entre el nnumero de renglones
     promedio=suma/renglones
! se imprime el resultado
     WRITE(*,*)"COLUMNA N°",j,";",promedio
! se pasa a la otra columna 
  END DO


! ENcabezado G=
  WRITE(*,*)"PROMEDIO DE LOS RENGLONES:"
  DO j=1,renglones
! antes depasar a calcular otra suma de renglones , se vuelve a 0.
     suma=0
     DO i=1,columnas
! se suman todos los elementos del renglon "j"
        suma=lop(i,j)+suma
     END DO
! se divide esa suma entre el numero de columnas
     promedio=suma/columnas
! se imprime el resultado
     WRITE(*,*)"RENGLON N°",j,";",promedio

  END DO


! fin .... se acabo el programa
END PROGRAM RENGLONES_COLUMNAS
