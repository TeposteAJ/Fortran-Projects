!
!! a.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp38>
!! 
!! Started on  Tue Mar 12 14:48:21 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-mar-12.martes 16:23:50 (ajteposte)>
!
! INICIO DEL PROGRAMA 
! Tiene como fin leer los datos de un archivo externo, y encontrar si
!  existe algun tipo de error en él.

 PROGRAM archivo_lectura

IMPLICIT NONE

CHARACTER(len=99)::nombrearchiv
INTEGER::N=0
INTEGER::ape,lec
REAL::x

! Obtener el nombre del archivo

WRITE(*,*)"Introduzca el nombre del archivo que desea que el programa &
     &lea"
READ(*,*)nombrearchiv
! Solo para confirmar 
WRITE(*,*)"El archivo que abrira para leer es:",nombrearchiv

! Se usaran el comando OPEN para abrir el archivo y se indicaran que
! se hara en él.

OPEN(UNIT=3,FILE=nombrearchiv,STATUS="OLD",ACTION="READ",IOSTAT=ape)

! Condicinal necesario para detectar el error...

apertura: IF(ape==0)THEN
          ! Se lee la informacion, para esto se requiere la ayuda de
          !  un DO condicional, para repetir la accion 
           lectura:DO 
                   READ(3,*,IOSTAT=lec) x 
                   
                   IF (.NOT.lec==0) EXIT
                   N=N+1
                   WRITE(*,*)"linea leida =",N,"valor=",x
                   END DO lectura
            ! Se termino de leer la información o hubo un error
          
    Sin_de_lectura:IF(lec>0)THEN
                   WRITE(*,*)"Error al intentar leer la linea",N+1
                   ELSE !fin de lectura
                   STOP
                   END IF Sin_de_lectura
             
           END IF apertura
CLOSE(3) ! Se cierra el documento que se estaba usando 
END PROGRAM archivo_lectura
! Fin del programa




