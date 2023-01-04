!
!! programa5.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue May 14 11:46:06 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-25.sábado 23:26:22 (angela)>
!

! Este >=D programa usará subrutinas n_n ... es el primero >=D ...
! LAS SUBRUTINAS NOS PERMITEN HACER MÄS CLAROS LOS PROGRAMAS ! Y
!  LUCEN MEJOR >=B...
PROGRAM Mediasubrutina

  ! Diccionario >=D DE variables 
  IMPLICIT NONE
  REAL,ALLOCATABLE,DIMENSION(:)::datos   ! *arreglo que contiene los datos
  CHARACTER(len=33)::archivito           ! nombre del archivo
  INTEGER::k=0                           ! *contara el n° de datos
  INTEGER::error                         ! auxiliar para leer archivo
  INTEGER::i                             ! contador para leer archivo
  REAL::media,medianaf,des               !*guardan los resultados               

  ! * estas variables se usaran en la subrutinas

  ! Inicia el programita >=B "por FOrtran" >=) 
  ! INSTRUCIONES AL USUARIO, EN PANTALLA ... para que no entre en
  !  panico c= 
  WRITE(*,*)"***********************************************************&
       &"
  WRITE(*,*)"PROGRAMA MEDIA-MEDIANA-DESVIACIÓN"
  WRITE(*,*)"***********************************************************&
       &"

  WRITE(*,*)"Hola! Usuario ... n_n yo soy un lindo programa que te auxil&
       &iara encontrando la media aritmetica de un conjunto de datos, qu&
       &e tengas guardados en algun archivo previo"
  WRITE(*,*)"¿Cuál es el nombre de su archivo?"
  READ(*,*)archivito

  ! Se abrira al documento n_n

  OPEN(UNIT=37,FILE=archivito,STATUS="OLD",ACTION="READ",IOStAt=error)
  ! Leer archivo, para contar numero de datos

  DO 
     k=k+1
     READ(37,*,IOSTAT=error) media

     IF(error<0) EXIT
     IF(error>0) CYCLE
  END DO
  error=0
  ! Se asigna el tamaño al arerglo que quedo indefinido 
  k=k-1
  ALLOCATE(datos(k))


  REWIND(37)! Vuelva a iniciar el archivo al primer dato

  ! Se alamcenan los datos en un arreglo, se vuelve a leer el archivo
  DO i=1,k
     READ(37,*,IOSTAT=error)datos(i)
     IF(error<0) EXIT
     IF(error>0) CYCLE
  END DO
  ! Se termmino de guardar los datos

  ! Llamamos a nuestra subrutina que calcula la media y la desviacion
  ! >=D...
  ! NOTESE COMO LA CANTIDAD DE ESPACIO PARA CALCULAR LAS DOS COSAS ES
  !  SOLO UNA LINEA D= , ES como BRUJERIA moderna ;)
  CALL aritmetrica(datos,k,media,des)
  ! datos ... es el arrglo con los datos
  !k .... la dimesión
  ! media...donde nos regresara el valor de la media
  ! des... nos regresara el valor de la desciacion


  ! No tube que llamar a ordenar pues la siguiente subrutina lo hace
  !  intrinsecamente ... :E ...u_u además si lo hacía corria mal el programa
  !CALL ordenar(datos,k)

  ! Llamamos a la subrutina para calcular la mediana, y de paso nos
  !  acomoda los datos
  CALL mediana(datos,k,medianaf)
  !medianaf...nos regresa el valor de la mediana

  ! IMPRESIONAR RESULTADOS AL USUARIO :E!!! TA da! terminamos
  WRITE(*,*)"                                                           &
       & &"
  WRITE(*,*)" RESULTADOS " 
  WRITE(*,*)"***********************************************************&
       &"
  WRITE(*,*)"Lista de datos, ordenados"
  WRITE(*,*)datos
  WRITE(*,*)"La media aritmetica es :    ",media 
  WRITE(*,*)"La mediana es :             ",medianaf
  WRITE(*,*)"La desviación estandar es : ",des
  WRITE(*,*)"***********************************************************&
       &"

END PROGRAM Mediasubrutina
! FIN DEL PROGRAMA =B
