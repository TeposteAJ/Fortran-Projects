!
!! c.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar 17 15:38:16 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 12:00:11 (angela)>
!
!Este programa nos servira para modelar una función lineal, que más se adapte
! a una serie de datos dados por el usuario, mediante un archivo,
! aplicando las tecnicas de la secccion anterior, con los Do
! iterativos...

! Iniciando
PROGRAM Ajuste_de_minimos_cuadrados

!Declarar variables
IMPLICIT NONE

CHARACTER(len=99)::nombrear            ! nombre del archivo
INTEGER::N=1                           ! contador del n° de datos
REAL::sumaxy=0,sumax=0,sumax2=0,sumay=0      ! todas las sumas necesarias
REAL::mediax, mediay                   ! valores de las medias de los datos
REAL::m                                ! pendiente de la ecuacion
INTEGER::ierror                           ! para saber el error
REAL::b                                ! resultado
REAL,DIMENSION(0:900)::datx,daty          ! valor de datos del archivo

!Fin de declaracion de variables...
!Pedir el nombre del archivo donde contiene los datos

WRITE(*,*)"Este programa sirve para dar una función lineal que más se &
     &ajuste a los datos introducidos"
WRITE(*,*)"Cual es el nombre del archivo donde almacena los datos:"
READ(*,*)nombrear
WRITE(*,*)"El archivo que se usara es:",nombrear

! No se necesita más informacion, solo a operar los datos y el archivo.
! Abrir archivo
OPEN(UNIT=31,FILE=nombrear,STATUS="OLD",ACTION="READ",IOSTAT=ierror)
! Leer y operar datos

! leer 
IF(ierror==0)THEN
         DO
         READ(31,*,IOSTAT=ierror)datx(N),daty(N)
          
            sumax=sumax+datx(N)
            sumay=sumay+daty(N)
            sumaxy=sumaxy+(datx(N)*daty(N))
            sumax2=sumax2+(datx(N)**2)
            
        IF(.NOT.(ierror==0))EXIT
          N=N+1

        END DO
      mediax=(1/N)*sumax
      mediay=(1/N)*sumay
      m=(sumaxy-(sumax*mediay))/(sumax2-(sumax*mediax))
      b=mediay-(mediax*m)
      WRITE(*,*)"Se termino de leer el archivo y se obtuvo que la ecua&
           &cion lineal que mejor se ajusta es:",b
      WRITE(*,*)"La pediente es:",m
      WRITE(*,*)"El numero de datos usados fueron:",N

        IF (ierror>0)THEN
          WRITE(*,*)"Error al leer la linea",N,"valor",datx(N),daty(N)
       ELSE
       STOP
        END IF
END IF
      mediax=(1/N)*sumax
      mediay=(1/N)*sumay
      m=(sumaxy-(sumax*mediay))/(sumax2-(sumax*mediax))
      b=mediay-(mediax*m)
      WRITE(*,*)"Se termino de leer el archivo y se obtuvo que la ecua&
           &cion lineal que mejor se ajusta es:",b
      WRITE(*,*)"La pediente es:",m
      WRITE(*,*)"El numero de datos usados fueron:",N

!cerrar archivo
CLOSE(31)
END PROGRAM Ajuste_de_minimos_cuadrados
!fin del programa


 
