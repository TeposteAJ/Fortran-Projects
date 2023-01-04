!
!! e.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp111>
!! 
!! Started on  Tue Mar 19 15:57:45 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-abr-15.lunes 23:28:30 (angela)>
!

! Programa que calculara y almacenara los datos en un archivo ,
! de la variacion del volumen ,en 3 diferentes temperaturas, cuando se varia la
! presion entre 1 y 1002 kilopascales
PROGRAM Ley_gas_ideal

IMPLICIT NONE

INTEGER::pres=1                        ! presión
CHARACTER(len=31)::nombrearchivo
INTEGER::error,i=0
REAL,PARAMETER::R=8.134                ! contante,L kPa/mol K
REAL,DIMENSION(4,11)::vol              ! valores para los diversos
REAL::V1,V2,V3
!  volumenes


! imprimir instrucciones en pantalla

WRITE(*,*)"Este programa creara una tabla de datos, donde se da el vol&
     &umen para diversas presiones y temperaturas"

WRITE(*,*)"¿Cómo desea nombrar al archivo?"
READ(*,*)nombrearchivo

! Crear un archivo
OPEN(UNIT=12,FILE=nombrearchivo,STATUS="NEW",IOSTAT=error)
! Titulos y columnas de las tablas

!se guardara en el documento

WRITE(12,*)"TABLA DE VARIACIONES DE PRESION"
WRITE(12,*)"     kpa",            270,               300,                 350


! Calculos

   lop: DO pres=1,1001,100
          i=i+1
          
         V1=(R*270.)/pres
         V2=(R*300.)/pres
         V3=(R*350.)/pres

vol(1,i)=pres
vol(2,i)=V1
Vol(3,i)=V2
Vol(4,i)=v3

WRITE(12,*)vol(1,i),vol(2,i),vol(3,i),vol(4,i)

END DO lop  ! Termina el End Do


 
CLOSE(12)

END PROGRAM Ley_gas_ideal
!termina el programa 



 
