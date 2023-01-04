!
!! yuyu.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Apr  1 20:59:19 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-abr-08.lunes 16:36:54 (angela)>
!

PROGRAM Tarea

IMPLICIT NONE 
CHARACTER(len=56)::nombrear
INTEGER::error
REAL,DIMENSION(900)::hb
INTEGER::N=1,i=2              ! contador 
REAL::mayor,menor

WRITE(*,*)"Nombre del archivo"
READ(*,*)nombrear
!abrir archivo

OPEN(UNIT=72,FILE=nombrear,STATUS="old",ACTION="READ",IOSTAT=error)

! Leer los datos y guardarlos en el arreglo 

iF ( error==0) THEN
     DO 
            READ(72,*,IOSTAT=error)hb(N)
     IF (.NOT.error==0) EXIT
             N=N+1
     END DO 

ELSE 

WRITE(*,*)"Error en el archivo","en la linea",N

END IF 
! Se terminaron de leer los datos




mayor=hb(1)
menor=hb(1)
Do i=2,N-1

      IF (mayor<hb(i)) mayor=hb(i) 
        
END DO

DO i=1,N-1
      IF (menor>hb(i)) menor=hb(i)
END DO
         
 CLOSE(72)
               
WRITE(*,*) "El valor en los datos es:",mayor
WRITE(*,*)"el menor es:",menor

WRITE(*,*)hb(1:N-1) 

END PROGRAM tarea  


