!
!! f.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sat Mar 23 15:03:28 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 10:40:57 (angela)>
!

! Este programa servira para crear una archivo en el cual estaran
  !  contenido una tabla de logaritmos de base entre 1 y 10, para
  !   incrementos de .2 ... todo se calculara con el programa

PROGRAM log

! Declarar variables 
IMPLICIT NONE

INTEGER::x,p                  ! enteros, un contador y el dato por si hay error
REAL::a,b,c,d,e,f,g,h,i,j               ! se alamacenaran valores para log
CHARACTER(len=30)::nombrear       !nombre archivo
REAL::log0,log1,log2,log3,log4,log5,log6,log7,log8,log9  !resultados
REAL,DIMENSION(11,10)::pl        ! arreglo donde se guardaran  los datos


!Imprimir en pantalla la orden 
WRITE(*,*)"¿Cómo desea nombrar el archivo?"
READ(*,*)nombrear

!abrir (crear) archivo
OPEN(UNIT=89,FILE=nombrear,STATUS="NEW",ACTION="WRITE",IOSTAT=p)

! Imprimir titulo de la tabla 

WRITE(89,*)"                              Tabla de logaritmos base 10 "
! primer  reglon, encabezados... se usa format 
WRITE(89,9)"X","X.0","X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9"
9 format ('',1A12,10A11)
! se define el formato 
! un Do para calcular los datos que llevara la tabla

DO x=1,10
a=x
b=x+0.1
c=x+0.2
d=x+0.3
e=x+0.4
f=x+0.5
g=x+0.6
h=x+0.7
i=x+0.8
j=x+0.9



log0=log10(a)
log1=log10(b)
log2=log10(c)
log3=log10(d)
log4=log10(e)
log5=log10(f)
log6=log10(g)
log7=log10(h)
log8=log10(i)
log9=log10(j)

pl(1,X)=REAL(a)           ! El primer numero valor indica la columna 
pl(2,X)=log0              ! La x, dara los valores para variar el numero
pl(3,X)=log1              ! de renglon
pl(4,X)=log2
pl(5,X)=log3
pl(6,X)=log4 
pl(7,X)=log5
pl(8,X)=log6
pl(9,X)=log7
pl(10,X)=log8
pl(11,X)=log9

END DO 
! Se imprimen los resultados... con formato tambien... todo esto se
!  almacena en el archivo

! Formato 
3 format ('',1F14.1,10F11.3)
 
WRITE(89,3)pl
! pl indica que se imprimira todo el arreglo 

CLOSE(89)
! Se cierra el archivo 
WRITE(*,*)"Su archivo:",nombrear,"ya esta creado" 

END PROGRAM log
!fin del programa


