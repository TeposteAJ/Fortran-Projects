!
!! e.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp111>
!! 
!! Started on  Tue Mar 19 15:57:45 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-abr-15.lunes 21:09:30 (angela)>
!

! Programa que calculara y almacenara los datos en un archivo ,
! de la variacion del volumen ,en 3 diferentes temperaturas, cuando se varia la
! presion entre 1 y 1002 kilopascales
PROGRAM Ley_gas_ideal

IMPLICIT NONE

INTEGER::pres=1                        ! presión
CHARACTER(len=31)::nombrearchivo
INTEGER::error
REAL,PARAMETER::R=8.134                ! contante,L kPa/mol K
REAL::V1,V2,V3                         ! valores para los diversos volumenes

WRITE(*,*)"Este programa creara una tabla de datos, donde se da el vol&
     &umen para diversas presiones y temperaturas"

WRITE(*,*)"¿Cómo desea nombrar al archivo?"
READ(*,*)nombrearchivo

! Crear un archivo
OPEN(UNIT=12,FILE=nombrearchivo,STATUS="NEW",IOSTAT=error)
! Titulos y columnas de las tablas

!se guardara en el documento
WRITE(12,*)"______________TABLA DE VARIACIONES DE PRESION______________"
WRITE(12,*)"Presion______","_Temperatura__","__Temperatura__","__Temperatura____"
WRITE(12,*)"(kPascal)____","____270 K____","______300 K___","________350 K______"

! Calculos

DO pres=1,1001,100
 
V1=(R*270)/pres
V2=(R*300)/pres
V3=(R*350)/pres

WRITE(12,*)pres,V1,V2,V3
 END DO

! Termina el End Do

CLOSE(12)

END PROGRAM Ley_gas_ideal
!termina el programa 



 
