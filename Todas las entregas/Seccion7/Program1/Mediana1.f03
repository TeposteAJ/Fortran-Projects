!
!! program1.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp114>
!! 
!! Started on  Tue Apr 16 15:09:50 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-05.domingo 22:02:20 (angela)>
!

! En este programa se calculara la media y la mediana, leida a partir
!  de un documento...
PROGRAM MEDIA_Y_MEDIANA

  ! DECLARACION DE RESULTADOS 
  IMPLICIT NONE

  REAL,ALLOCATABLE,DIMENSION(:)::conju        ! se guardaran los datos
  CHARACTER(len=89)::nombrear                 ! nombre del archivo
  REAL::mediana,media,dat,temporal,suma=0     ! *
  INTEGER::i,x,j,k                            ! contadores
  INTEGER,DIMENSION(1)::m                     ! auxiliar en operacion
  LOGICAL::jum                                ! sentencia logica ;)
  ! *
  !mediana   guardara el valor de la mediana
  !media     guardara el valor de la media
  !dat       auxiliar para guardar momentaneamente los datos y contarlos
  !temporal  almacenara temporalmente para hacer intercambios de posiciones
  !suma      guardara la suma para el promedio:E


  ! IMPRIMIR INSTRUCIONES AL USUARIO, SI NO ESTARA PERDIDO u_u 

  WRITE(*,*)" El siguiente programa calcula la media y la mediana a un c&
       &onjunto de datos introducidos mediante un archivo , generado pre&
       &viamente"
  WRITE(*,*)"___________________________________________________________&
       &_"
  WRITE(*,*)"Como se llama el archivo que contiene los datos"
  READ(*,*)nombrear

  !OPERACIONES DEL PROGRAMITA 

  ! Se abre el documento
  OPEN(UNit=36,FILE=nombrear,STATUS="OLD",IOSTAT=x)

  ! Se contaran el numero de datos que contiene el archivo
  DO 
     i=i+1
     READ(36,*,IOSTAT=x) dat

     IF(x<0) EXIT
     IF(x>0) CYCLE
  END DO
  x=0
  ! Se asigna el tamaño al arerglo que quedo indefinido 
  i=i-1
  ALLOCATE(conju(i),STAT=x)


  REWIND(36)! Vuelva a iniciar el archivo al primer dato

  ! Se alamcenan los datos en un arreglo, se vuelve a leer el archivo
  DO j=1,i
     READ(36,*)conju(j)

     ! se aprovecha y se introduce una suma :E para sumar todos los datos
     suma = suma+conju(j)

     IF(x<0) EXIT
     IF(x>0) CYCLE
  END DO
  ! Se termmino de guardar los datos

  ! calculamos la media aritmetrica con la suma y el numero de datos contados
  media= suma/i
  k=0

! buscamos el minimo y ordenamos con el DO 
  DO j=1,i

     m=minloc(conju(j:i))
! minloc me devuelve el lugar del minimo, "m" tiene que ser un
     !  arreglo... en este caso use uno de tamaño 1 

     x=m(1)+k
     ! necesario para que te de la posición correcta, contando los valores
     !  que ya pasaron... 
     k=k+1
     ! intercambiar el orden de los valores...
     temporal=conju(j)
     conju(j)=conju(x)
     conju(x)=temporal
  END DO

! ya esta ordenado de manera ascendente el conjunto, en el mismo
  !  arreglo inicial

! Ahora veremos si el total de datos es par o impar, para calcular la
  !  mediana, con un IF condicionaremos lo que se hara en cada caso >=c...
  If(mod(i,2)==0)THEN ! la funcion mod nos permite determinar si es par...
     i=i/2.

! en este caso resulta par así que se toma el elemento siguiente y se promedian
     Mediana= (conju(i) + conju(i+1))/2.
     REWIND(36)! Vuelva a iniciar el archivo al primer dato 

! Si no fue par, naturalmente tiene que ser impar... >=C .. y esto es
     !  fácil solo se divide el total entre dos y se toma el elemento
     !   que sigue :E al entero de la division
  ELSE
     i=i/2.
     WRITE(*,*)i,"no divisble ese valor"
     Mediana= conju(i+1) 

  END IF



  ! IMPRIMIR RESULTADOS

  WRITE(*,*)"Los resultados de los datos introducidos son:"
  WRITE(*,*)"Mediana=",mediana
  WRITE(*,*)"Media aritmetica=",media


  CLOSE(36)
  ! se cierra programita >:3
END PROGRAM MEDIA_Y_MEDIANA
!Fin



































![ 3, 5,7,0, 1]=a

!i min = 4


!temp=a(i)
!a(i)=a(imin)
!a(min)=temp

!i min=5
!temp=(a(2)
!(a(2)=a(imin)
!a(imin)=temp








