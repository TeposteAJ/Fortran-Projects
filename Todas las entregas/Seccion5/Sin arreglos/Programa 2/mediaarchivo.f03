PROGRAM media_arch

!Declarar variables

IMPLICIT NONE

CHARACTER(len=93)::nombrearchivo    ! Guardara el nombre del archivo
INTEGER::N=0                        ! Contador
REAL::b=0                           ! guaradra los valores del archivo
INTEGER::primero,segundo            ! Dara indicios para el saber el error
REAL::producto=1,sumita=0           ! Guardar las sumas y productos de los datos
REAL::mediageo,mediaart             ! valores de las medias

! Pedir el archivo a usar por el usuario
WRITE(*,*)"Introduzca el nombre del archivo que contenga la informacio&
     &n de los datos a calcular la media"
READ(*,*)nombrearchivo
WRITE(*,*)"El nombre del archivo que abrira es.",nombrearchivo

! Se abre el archivo y se dan las ordenes de lo que se hara en él

OPEN(UNIT=33,FILE=nombrearchivo,STATUS="OLD",ACTION="READ",IOSTAT=primero)

! Veamos que con el archivo, si tiene errores o algo
IF (primero==0)THEN

         ! Do condicional  repetira la acción
 
         leerarch:DO
                  READ(33,*,IOSTAT=segundo) b
                  
                  IF(.NOT.segundo==0)EXIT
                  N=N+1
                  producto= producto*b
                  sumita= sumita+b

                  END DO leerarch
           ! Se termino de leer la información y de operar con ella,
           !  o se presento un error.
 

                   mediaart=(1./N)*sumita
                   mediageo= producto**(1./N)

           !Imprimir resultados
WRITE(*,*)"El número de datos que se operaron fueron:",b
WRITE(*,*)"La media geometrica de sus datos es:",mediageo
WRITE(*,*)"La media aritmetica es:",mediaart

                  IF(segundo>0)THEN
                  WRITE(*,*)"Error al intentar leer la linea",N+1
                  ELSE ! no hay más que hacer pero era necesario el
                     !  condicional If, asi que solo detenemos el programa
                      STOP
                  END IF
END IF
! Cerrar el documento que se estaba usando
CLOSE(33)

! Fin del programa 
END PROGRAM media_arch








