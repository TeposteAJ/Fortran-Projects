!
!! tercer.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  8 20:12:13 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 21:45:00 (angela)>
!

PROGRAM Coordenadas
IMPLICIT NONE
REAL::w,x,y,radi
REAL,DIMENSION(2)::vector
REAL,PARAMETER::pi=3.14159




WRITE(*,*)"Este programa hace transformaciones entre coordenadas polar&
     &es y rectangulares"
WRITE(*,*)"En que formato introducira sus datos"
WRITE(*,*)"Eliga un número"
WRITE(*,*)" 1- Polar , 2- REctangulares"
READ(*,*)w

IF (w==2)THEN

WRITE(*,*)" Deme su coordenada "
READ(*,*)x,y

! operar los datos, para convertirlos en polares
vector(1)=sqrt((x**2)+(y**2))
vector(2)=ATAN2(y./x.)

WRITE(*,*)"Las coordenadas polares son"
WRITE(*,*)"Modulo",Vector(1)
WRITe(*,*)"Angulo",Vector(2)

ELSE IF (w==1) THEN
WRITE(*,*)"Deme su modulo"
READ(*,*)x
WRITE(*,*)"Deme su angulo"
READ(*,*)y
radi=(y*pi)/180.
vector(1)=Cos(radi)
vector(2)=Sen(radi)

WRITE(*,*)"Las coordenada rectangulares son"
WRITE(*,*)"(",vector(1),",",vector(2),")"

ELSE 
WRITE(*,*)"No eligio bien la opcion"
WRITE(*,*)"ejecute el programa de nuevo"

END IF



END PROGRAM Coordenadas
