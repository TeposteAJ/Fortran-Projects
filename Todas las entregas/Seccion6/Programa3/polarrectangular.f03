!
!! tercer.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  8 20:12:13 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 19:45:58 (angela)>
!

! Este programita :3, convierte coordenadas polares en rectagulares
!  y biseversa ... 
PROGRAM Coordenadas

!DECLARAR LAS VARIABLES 
IMPLICIT NONE

REAL::w,x,y,radi               ! abajito explico cada uno >=CC 
REAL,DIMENSION(2)::vector      ! arreglo ordenado para un vector en R2
REAL,PARAMETER::pi=3.14159     ! valor del pi " uuuuh! =o"
! Los que faltan:
! w   valor para la opcion que elegira
! x  coordenada x, o modulo 
! y  coordenada y, o angulo 


! IMPRIMIR LAS INSTRUCIONES AL USUARIO
WRITE(*,*)"Este programa hace transformaciones entre coordenadas polar&
     &es y rectangulares"
WRITE(*,*)"En que formato introducira sus datos"
WRITE(*,*)"Eliga un número"
WRITE(*,*)" 1- Polar , 2- REctangulares"
READ(*,*)w

! COSITAS QUE HACE EL PROGRAMA; 

! Condicional, para saber que opcion eligió >=D

IF (w==2)THEN
! Se eligio la opcion 2... cambiara de rectangulares a polares =o
WRITE(*,*)" Deme su coordenada "
READ(*,*)x,y

! operar los datos, para convertirlos en polares
vector(1)=sqrt((x**2)+(y**2))
vector(2)=ATAN2(x,y)
! la Funcion ATAN2, es el equivalente a sacar manualmente la
!  arcotangente de x & y para obtener el angulo


! SE IMPRESIONAN LOS RESULTADOS C= FELICES 
WRITE(*,*)"Las coordenadas polares son"
WRITE(*,*)"Modulo",Vector(1)
WRITe(*,*)"Angulo",Vector(2)

! sí se eligio la 1, convertira de polares, a rectangulares
ELSE IF (w==1) THEN
WRITE(*,*)"Deme su modulo"
READ(*,*)x
WRITE(*,*)"Deme su angulo"
READ(*,*)y
!operar los datos para transformar sus componentes
radi=(y*pi)/180.
vector(1)=Cos(radi)
vector(2)=Sin(radi)

! IMPRESIONAR :E RESULTADOS 
WRITE(*,*)"Las coordenada rectangulares son"
WRITE(*,*)"(",vector(1),",",vector(2),")"


! Si se elige cualquier otro numero D=!!!, enserio >=C usuario bobito
! , solo te dí dos opciones... >=C
ELSE 
WRITE(*,*)"No eligio bien la opcion"
WRITE(*,*)"ejecute el programa de nuevo"

END IF


! Se acabo el programita =B
END PROGRAM Coordenadas
