!
!! yuyu.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  1 20:59:19 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 18:50:09 (angela)>
!
 ! Este programa reacomoda los datos de un conjunto, de manera que el
!  esten puestos en orden asendente... (menor al mayor c= )
PROGRAM Tarea

  ! DECLARAR VARIABLES A USAR >=c 
  IMPLICIT NONE 
  CHARACTER(len=56)::nombrear               ! nombre del archivo
  ! donde esta los datos 
  INTEGER::error                            ! auxiliar lectura datos
  REAL,DIMENSION(1000)::hb                  ! arreglo para los datos
  INTEGER::N=1,i=0,j,k,m                    ! contadores
  REAL::temporal                            ! auxiliar  guardara valores


  ! IMPRIMIR INSTRICIONES AL USUARIO PARA QUE SEPA QUE HACER D=!!!
  WRITE(*,*)"Nombre del archivo"
  READ(*,*)nombrear

  !abrir archivo
  OPEN(UNIT=72,FILE=nombrear,STATUS="old",ACTION="READ",IOSTAT=error)

  ! Leer los datos y guardarlos en el arreglo 
  IF ( error==0) THEN
     DO 
        READ(72,*,IOSTAT=error)hb(N)
        IF (.NOT.error==0) EXIT
        N=N+1
     END DO

  ELSE

     WRITE(*,*)"Error en el archivo","en la linea",N

  END IF
  ! Se terminaron de leer los datos

  ! los lugares que sobran >=c, les asigna el valor 0
  hb(N+1:1000)=0


  ! Do para repetir los Do de adentro , y asegurarse que todos los
  !  elementos queden bien ordenados, si solo se  repite el proceso
  !   una vez, los valores reacomodados en lugares que ya pasaron =s
  !    nos producen errores, no son tomados encuenta...
  DO m=1,N
     k=0 ! necesario volvar a iniciar en k=0
     Do j=1,N-1
        k=0
        Do i=1,N
           ! Se compara un elemento con todos 
           IF (hb(j)>hb(i))THEN     ! Sí es mayor que el elemento
              !  comparado, entonces se agrega 1 al contador 
              k=k+1
           END IF                   ! al final de compararlos con
           !  todos, tenemos a cuantos numeros es mayor 
        END DO                      ! lo que significa que si es
        !  mayor a 3 numeros, entonces le correspondera
        ! ir en la  posicion 4 

        ! estos comentarios solo los use para verificar mi programa n_n!
        !  cuando lo >=D fabricaba...
        !WRITE(*,*)"HBJ",j,"es mayor que ",hb(j),"tantos",k
        !       WRITE(*,*)"entonces va en ",k+1
        !      WRITE(*,*) "ANTES",hb(k+1),k+1,hb(j),j
        !     WRITE(*,
        !
        !*)":::::::::::::::::::::::::::::::::::::::::::::::::::::::"

        ! Entonces se hacen los cambios entre el elemento en j, y el de la
        !  posicion que le corresponde y se pasa al siguiente j :E en
        !   el segundo Do 
        temporal=hb(k+1)
        hb(k+1)=hb(j)
        hb(j)=temporal

        ! comentario, para leer ... cuando se hacia el programa
        !  WRITE(*,*)"NUEVO",hb(k+1),k+1,hb(j),j

     END DO
  END DO

  CLOSE(72) 
  ! Cerrar archivo 
  ! IMPRIMIR RESULTADOS EN PANTALLA 

  !Se imprime hasta,N... pues lo otros elementos son ceros 
  WRITE(*,*)hb(1:N) 

END PROGRAM tarea
!tan, tan se acabo el programa



