!
!! program5.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Fri May  3 00:34:20 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-06.lunes 00:26:00 (angela)>
!

! ES EXACTAMENTE IGUAL QUE EL OTRO; SOLO QUE AQUI TOMO ELPROMEDIO DE
!  TODOS LOS NODOS; LOS QUE NO VARIAN TAMBIEN
PROGRAM TEMP_PLACA

  IMPLICIT NONE 
  REAL,ALLOCATABLE,DIMENSION(:,:)::Plac
  INTEGER::i,j,x,y,ren,col,o
  REAL::temporal,diferencia,suma,haber,promedio,numnodos,celsius,celsiusva,celsiusfi

  WRITE(*,*)"Este programa calcula la temperatura de una placa metalica,&
       & de 100 nodos..."
  WRITE(*,*)"Este programa calcula la temperatura de una placa metalica..."
WRITE(*,*)"¿Cuántos nodos tendrá su placa horizontalmente? (columnas)"
READ(*,*)col
WRITE(*,*)"¿Cuántos nodos tendrá su placa verticalmente? (renglones)"
READ(*,*)ren
WRITE(*,*)"¿Qué temperatura tendran los nodos perifericos?"
READ(*,*)celsius
WRITE(*,*)"¿Qué temperatura tendran los nodos variables al iniciar?"
READ(*,*)celsiusva
WRITE(*,*)"Introdusca las coordenadas del nodo interno que no variara &
     &(renglos,columnas)"
READ(*,*)x,y
WRITE(*,*)"Qué temperatura tendrá este ultimo nodo?"
READ(*,*)celsiusfi

ALLOCATE(plac(ren,col))
  
  Plac(:,:)=celsiusva

  Plac(3,8)=celsiusfi
  Plac(1,:)=celsius
  Plac(ren,:)=celsius
  Plac(:,1)=celsius
  Plac(:,col)=celsius
  temporal=celsius
numnodos=(ren*col)-(2*ren+2*col-1)
blip: DO
Suma = 0.
o=0.
haber=(((2*ren+2*col-2)*20)+100)/(2*ren+2*col-1) ! promedio de los
!  queno varian  
    renglon: DO i=2,col-1
        DO j=2,ren-1
IF(i==x.AND. j==y) cycle renglon
           WRITE(*,*)"placai,,,",i,"j",j
  plac(i,j)=(plac(i,j+1)+plac(i,j-1)+plac(i+1,j)+plac(i-1,j))/4.
suma=suma+plac(i,j)
              
        END DO
     END DO renglon
o=o+1
promedio=suma/39.
diferencia=temporal+haber-(promedio+haber) ! aqui se agrega el
!  promedio de los que no varian... 
WRITE(*,*)"promedio",promedio,"anterior",temporal
WRITE(*,*)"diferencia",diferencia
 IF(sqrt(diferencia**2)<=0.01)EXIT
temporal=promedio
  END DO blip
WRITE(*,*)plac(5,5)

END PROGRAM TEMP_PLACA


! CAMBIA POQUITO EL RESULTADO, EL MAESTRO COBOS PROPUSO SOLO LOS QUE
!  NO VARIAN... PERO COMO EL NOMBRE LO IDICA NUESTRO COMPAÑERO
!   JUANITHO ME SUGIRIO HACERLO ASI TAMBIEN... TOMANDO ENCUENTA PARA
!    EL PROMEDIO TODOS LOS NODOS.
