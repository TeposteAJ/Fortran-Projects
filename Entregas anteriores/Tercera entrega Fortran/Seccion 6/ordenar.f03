!
!! yuyu.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  1 20:59:19 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 20:08:25 (angela)>
!

PROGRAM Tarea

IMPLICIT NONE 
CHARACTER(len=56)::nombrear
INTEGER::error,x
REAL,DIMENSION(0:999)::hb
INTEGER::N=0,i=0,j              ! contador 
REAL::mayor,menor
REAL::k

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
hb(N:999)=0

K=N
j=N-1
mayor=hb(0)
menor=hb(0)

global:DO x=0,N

Do i=0,j

      IF (mayor<hb(i)) mayor=hb(i) 

END DO

DO
 READ(*,*)c=hb(k)
   IF(mayor==hb(k)) EXIT

END DO

hb(k)=hb(j)
hb(j)=mayor
      
j=j-1
END DO global

 CLOSE(72)
               

WRITE(*,*) "El valor mayor en los datos es:",mayor
WRITE(*,*)"el menor es:",menor

WRITE(*,*)hb(0:N-1) 

END PROGRAM tarea  



