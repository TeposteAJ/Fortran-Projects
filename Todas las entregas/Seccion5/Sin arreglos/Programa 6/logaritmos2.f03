!
!! f.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sat Mar 23 15:03:28 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-31.domingo 15:34:35 (angela)>
!

! Este programa servira para crear una archivo en el cual estaran
  !  contenido una tabla de logaritmos de base entre 1 y 10, para
  !   incrementos de .2 ... todo se calculara con el programa
PROGRAM log

IMPLICIT NONE

INTEGER::x,p
REAL::a,b=1,c=1.1,d=1.2,e=1.3,f=1.4,g=1.5,h=1.6,i=1.7,j=1.8
CHARACTER(len=30)::nombrear
REAL::log0,log1,log2,log3,log4,log5,log6,log7,log8,log9


WRITE(*,*)"Como desea nombrar el archivo?"
READ(*,*)nombrear

OPEN(UNIT=89,FILE=nombrear,STATUS="NEW",ACTION="WRITE",IOSTAT=p)



WRITE(89,*)"                    Tabla de logaritmos base 10 "
WRITE(89,9)"X","X.0","X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9"
9 format ('',1A12,10A11)
DO x=1,10
a=x
b=b+0.1
c=c+0.1
d=d+0.1
e=e+0.1
f=f+0.1
g=g+0.1
h=h+0.1
i=i+0.1
j=j+0.1



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


WRITE(89,3)a,log0,log1,log2,log3,log4,log5,log6,log7,log8,log9 
3 format ('',1F14.1,10F11.3)
WRITE(*,*)a,log0,log1,log2,log3,log4,log5,log6,log7,log8,log9 

END DO 


CLOSE(89)

END PROGRAM log


