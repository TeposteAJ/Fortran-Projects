!
!! c.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar 17 15:38:16 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-15.lunes 18:36:39 (angela)>
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
REAL::datx,daty                        ! valor de datos del archivo

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
! Si los datos son correctos, se leeran y operara los datos 

         DO
         READ(31,*,IOSTAT=ierror)datx,daty
          WRITE(*,*)n,"N Y VALORES",datx,daty
            sumax=sumax+datx
            sumay=sumay+daty
            sumaxy=sumaxy+(datx*daty)
            sumax2=sumax2+(datx**2)

! nos indicara si existio un error al leer archivo ;) ...             
        IF(.NOT.(ierror==0))EXIT
          N=N+1

        END DO

ELSE 
          WRITE(*,*)"Error al leer la linea",N,"valor",datx,daty
     
END IF

! Se calculan la pendiente y la constante de le ecuacion : 

      mediax=(1/N)*sumax
      mediay=(1/N)*sumay
      m=(sumaxy-(sumax*mediay))/(sumax2-(sumax*mediax))
      b=mediay-(mediax*m)
! Se imprimen en pantalla los resultados: 
      WRITE(*,*)"Se termino de leer el archivo"
      WRITE(*,*) "La ecuacion lineal que mejor se ajusta a los datos e&
           &s la que tiene:"
      WRITE(*,*)"pediente:",m
      WRITE(*,*)"y una constante de:",b
      WRITE(*,*)"El numero de datos usados fueron:",N

!cerrar archivo
CLOSE(31)
END PROGRAM Ajuste_de_minimos_cuadrados
!fin del programa


 
