!
!! programa6.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue May 14 11:46:06 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-26.domingo 15:07:07 (angela)>
!

! Este programa da una ecuacion, que se ajusta a los datos
!  introducidos... por medio de minimos cuadrados... usando una subrutina
PROGRAM Minimoscua

  ! Declaración de vaiables:D 
  IMPLICIT NONE
  ! Estas se usaran en la subrutina 
  REAL,ALLOCATABLE,DIMENSION(:)::datosx,datosy  !arreglos para los datos
  REAL::m,b,r                                   !Resultados
  ! Solo del programa
  CHARACTER(len=33)::archivito                  ! nombre archivo =o
  INTEGER::N=0,error,i                          !cotadores y auxiliares


  ! Inicia el programita >=B por FOrtran >=) 
  ! INSTRUCIONES AL USUARIO
WRITE(*,*)"======================================================================"
WRITE(*,*)"PROGRAMA-MINIMOS CUADRADOS"
WRITE(*,*)"======================================================================"

  WRITE(*,*)"Hola! Usuario ...soy auxiliar para encontrar los valores &
       &de una ecuacion que mejor se ajuste a tus datos, por el metodo&
       & de minimos cuadrados"
  WRITE(*,*)"¿Cuál es el nombre de su archivo?"
  READ(*,*)archivito

  ! Se abrira al documento n_n

  OPEN(UNIT=37,FILE=archivito,STATUS="OLD",ACTION="READ",IOStAt=error)
  ! Leer archivo, para contar numero de datos

  DO 
     N=N+1
     READ(37,*,IOSTAT=error)m

     IF(error<0) EXIT
     IF(error>0) CYCLE
  END DO
  error=0
  ! Se asigna el tamaño al arerglo que quedo indefinido 
  N=N-1
  ALLOCATE(datosx(N))
  ALLOCATE(datosy(N))

  REWIND(37)! Vuelva a iniciar el archivo al primer dato

  ! Se alamcenan los datos en un arreglo, se vuelve a leer el archivo
  DO i=1,N
     READ(37,*,IOSTAT=error)datosx(i), datosy(i)
     IF(error>0) CYCLE
  END DO

  ! Solo para verificar que los datos se almacenaron bien :B 
  !WRITE(*,*)datosx
  !WRITe(*,*)";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
  !WRITE(*,*)datosy

  ! LLamamos a la subrutina donde se introducen los dos arreglos y la
  !  dimension y regresa los valores de "m" y "b" de la ecuación 
  CALL cuadrados (datosx,datosy,N,m,b,r)


  ! IMPRIMIR RESULTADOS
  WRITE(*,*)"RESULTADOS" 
  WRITE(*,*)"======================================================================"
  WRITE(*,*)"Los valores para su ecuacion y=m*x + b son"
  WRITE(*,*)"La pendiente es (m)",m
  WRITE(*,*)"La constante es (b)",b
  WRITE(*,*)"Y = ",m,"*X +",b
  WRITE(*,*)"El coeficiente de correlación lineal es(r):",r

  WRITE(*,*)"====================================================================="

END PROGRAM Minimoscua
! Fin del programa :E !!! que prueba la subrutina 
