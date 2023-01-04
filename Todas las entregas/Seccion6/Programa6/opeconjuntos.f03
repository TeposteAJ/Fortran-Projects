!
!! sexto.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue Apr  9 15:09:47 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-05.domingo 21:15:50 (angela)>
!

! Este programa imprime la intersecion y la union de dos conjuntos,
!  dados de un archivo
PROGRAM conjuntos

  ! DECLARAR VARIABLES
  IMPLICIT NONE 
  CHaracter(len=33)::nombreara,nombrearb           ! nombre archivos
  REAL,DIMENSION(999)::conjuA,conjuB,union,iguales !cojuntos,resultantes
  INTEGER::falla,error                             ! auxiliares lectura
  INTEGER::i=1,j,m=1,p,g=0,k,z=0,f,u=0,x           !contadores
  REAL::a,b                                        !auxiliares guarda valores

  !IMPRIMIR INSTRUCIONES A EL USUARIO
  WRITE(*,*)"nombre el primer archivo,donde almacene su conjunto de datos"
  READ(*,*)nombreara
  WRITE(*,*)"nombre del siguiente archivo"
  READ(*,*)nombrearb

  ! abrir el archivo =B
  OPEN(UNIT=20,FILE=nombreara,STATUS="OLD",ACTION="READ",IOSTAT=error)

  ! IF para contar cuantos elementos tiene y almacenar la informacion >=x
  IF (error==0)THEN
     DO 
        READ(20,*,IOSTAT=error)x
        conjuA(i)=x
        IF (error>0.or. error<0)EXIT
        i=i+1
     END DO
  ELSE 
     WRITE(*,*)"ocurrio un error al leer archivo:",nombreara
     WRITE(*,*)"verifique la linea",i+1

  END IF
  ! se termino de leer el primer archivo y se almaceno en el conjunto

  k=1
  ! solo para confirmar se imprime los datos del primer conjunto
  WRITE(*,*)"EL PRIMER CONJUNTO"
  WRITE(*,*)conjua(1:i)

  !abrir el segundo archivo
  OPEN(UNIT=30,FILE=nombrearb,STATUS="OLD",ACTION="READ",IOSTAT=falla)

  ! IF para contar cuantos elementos tiene y almacenar la informacion >=x
  IF(falla==0) THEN
     DO 
        READ(30,*,IOSTAT=falla)x
        conjuB(k)=x
        IF (falla<0.or.falla>0)EXIT
        k=k+1
     END DO
  ELSE 
     WRITE(*,*)"ocurrio un error al leer el archivo:",nombrearb
     WRITE(*,*)"verifique la linea",k+1

  END IF
  ! se termino de leer el segundo archivo y se almaceno el 2do
  !  conjunto

  ! Para confirmar se impresiona >=D el segundo conjunto
  WRITE(*,*)"EL SEGUNDO CONJUNTO"
  WRITE(*,*)conjub(1:k-1)


  ! COMPARACIONES,CALCULOS,ACCIONES DEL PROGRAMA


  ! PARA CREAR LOS ELEMENTOS DE LA INTERSECION
  g=1
! con este Do se comparan los elementos de a contra todos lo
  !  elementos de b, y si con alguno de ellos es igual, se alamcena
  !   el valor de uno de ellos en un arreglo que contiene los
  !    iguales(interseccion) 
  DO p=1,i
     a=conjuA(p)

     ju:DO j=1,k
        b=conjuB(j)
        IF(a==b)THEN
           IF(iguales(g-1)==b)cycle ! Esto nos ayuda a que no se
                                    !  repitan elementos repetidos n_n 
           iguales(g)=a
           g=g+1  
        END IF

     END DO ju
  END DO


  ! PARA ADJUNTAR A LA UNION  LOS ELEMENTOS NO REPETIDOS DE A

! En este se comparan los elementos de a contra todos los guardados
  !  en "iguales" y si alguno de ellos es igual , se almacena un +1
  !   en un contador.... si este contador esta en 0... significa que
  !    no se repite y puedes almacenar este elemento de a en el
  !     arreglo union =B
  DO j=1,i-1
     m=0
     DO x=1,g
        WRITE(*,*)conjuA(j),iguales(x)
        IF (conjuA(j)==iguales(x))THEN
           m=m+1
           write(*,*)m
        END IF
     END DO
     IF (m==0)THEN
        u=u+1
        union(u)=conjuA(j)

     END IF
  END DO


  ! PARA ADJUNTAR A LA UNION  LOS ELEMENTOS NO REPETIDOS DE B

! En este se comparan los elementos de b contra todos los guardados
  !  en "iguales" y si alguno de ellos es igual , se almacena un +1
  !   en un contador.... si este contador esta en 0... significa que
  !    no se repite y puedes almacenar este elemento de b en el
  !     arreglo union =B
  DO j=1,k-1
     m=0
     DO x=1,g
        IF (conjuB(j)==iguales(x))THEN
           m=m+1
        END IF
     END DO
     IF (m==0)THEN
        u=u+1
        union(u)=conjuB(j)

     END IF
  END DO



  ! SE IMPRIMEN LOS RESULTADOS PARA QUE SE ENTERE EL USUARIO >=C 

  WRITE(*,*)"CONJUNTO A UNION CON CONJUNTO B"
! IMPRimi con DO para que quede >:3 en lista bonito <3 ... 
! ahora para no agregar a la union los iguales, solo los imprimi
  !  juntos >=D 
  DO z=1,u
     WRITE(*,*)union(z)
  END DO
  m=1
  DO m=1,g
     WRITE(*,*)iguales(m)
  END DO

! Igual imprimi los iguales en listita con un Do "uuuhh =o"
  WRITE(*,*)" INTERSECION DEL CONJUNTO A CON B"
  DO m=1,g

     WRITE(*,*)iguales(m)
  END DO


! Cerrar los dos archivos :E , no balla a ser que se meta alguien 
  CLOSE(20)
  CLOSE(30)

END PROGRAM conjuntos
! FIN FIN :D
