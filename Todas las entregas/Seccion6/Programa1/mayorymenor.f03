!
!! yuyu.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  1 20:59:19 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 18:09:14 (angela)>
!

PROGRAM Tarea
  ! Este programa nos ayuda a encontrar el elemento mas grande y el más
  !  pequeño de un conjunto c= ... 


  ! DECLARAR VARIABLES A USAR >=D 
  IMPLICIT NONE 
  CHARACTER(len=56)::nombrear           ! archivo donde esta el conjunto   
  INTEGER::error                        ! auxiliar en la lectura del archivo
  REAL,ALLOCATABLE,DIMENSION(:)::hb     ! arreglo para almanenar el conjunto
  INTEGER::N=0,i=0                      ! contadores 
  REAL::mayor,menor                     ! guardaran el valor menor y maximo


  ! SE IMPRIMEN INSTRUCIONES AL USUARIO n_n
  WRITE(*,*)"Este programa encuentra el maximo y el minimo de un conjunt&
       &o de datos"
  WRITE(*,*)"A continuacion teclee el nombre de su archivo"
  READ(*,*)nombrear


  ! PROCESOS DEL PROGRAMA  
  !abrir archivo
  OPEN(UNIT=72,FILE=nombrear,STATUS="old",ACTION="READ",IOSTAT=error)

  ! Leer los datos y guardarlos en el arreglo 
  IF ( error==0) THEN
     DO 
        READ(72,*,IOSTAT=error)i
        IF (.NOT.error==0) EXIT
        N=N+1
     END DO
  ELSE 
     WRITE(*,*)"Error en el archivo","en la linea",N
  END IF
  ! Se terminaron de leer los datos

  ! segun el contador "N" , se declarará el tamaño del arreglo no asignado
  ALLOCATE(hb(0:N-1))
  ! reiniciamos el archivo, para volver a leer los datos
  REWIND(72)

  ! Se almacenan los datos en el arreglo que ya tiene un tamaño n_n justo
  DO i=0,N-1
     READ(72,*)hb(i)
  END DO

  ! Antes declaramos nuestro mayor  y menos como defecto... para partir
  mayor=hb(0)
  menor=hb(0)


  ! Se compararan cada uno de los elementos con el mayor que fijamos
  Do i=0,N-1

     IF (mayor<hb(i)) mayor=hb(i) 
     ! Sí el "mayor" es menor que el elemento que se compara, entonces
     !  "mayor" toma el valor de este

  END DO

  ! Se repite el proceso pero ahora para hallar el minimo 
  DO i=1,N-1

     IF (menor>hb(i)) menor=hb(i)
     ! Esta vez menor tiene que ser mayor, tomar el valor del elemento
     !  comparado 

  END DO

  !Se cierra el documento 
  CLOSE(72)


  !  SE IMPRIMEN RESULTADOS 

  ! Encabezado, ayudara a saber que es lo que se esta imprimiendo (impresionando>:3)
  WRITE(*,*)"LISTA DE ARCHIVOS"

  ! Con un Do, se repite la accion de impresionar los elementos :E
  ! ,además que nos permite condicionar para poder escribir la
  !  etiqueta de mayor o menor, nos da el resultado en forma de
  !  lista... es mas bonito :3 
  DO i=1,N-1

     ! Condicinal para imprimir la etiqueta correspondiente
     IF(hb(i)==mayor)THEN            ! Sí el elemento es igual a mayor
        WRITE(*,*)hb(i),"Mayor"      ! se imprime el elemento y
                                     !  enseguida la leyenda mayor :E 


     ELSEIF(hb(i)==menor)THEN                !Sí el elemento es igual a menor
        WRITE(*,*)hb(i),"Menor"      ! se imprime el elmento y
                                     !  enseguida la leyenda menor >=)


     ELSE                            !Sí no es ninguno de los
                                     ! anteriores, solo se imprime el elemento 
        WRITE(*,*)hb(i)
     END IF

  END DO


END PROGRAM tarea
! Juum! >=c termino el programita :E


