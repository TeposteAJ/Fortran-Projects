!
!! program5.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Fri May  3 00:34:20 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-05.domingo 23:52:59 (angela)>
!

! Este programa muy interesante, calcula como varia la temperatura en
!  un sistema con forma de placa, en el cual se establece una temperatura
!   periferica y un punto fijo que tampoco varia, de ahi en fuera
!    todas varian sacando el promedio que las rodea, el punto es
!     calcular esto hasta llegar a una diferencia que sea
!      despresiable 
PROGRAM TEMP_PLACA

  ! DECLARACION DE VARIABLES 
  IMPLICIT NONE 
  REAL,ALLOCATABLE,DIMENSION(:,:)::Plac              ! matriz de los nodos
  INTEGER::i,j,x,y,o                                 ! contadores
  INTEGER::ren,col                                   ! renglones y columnas
  REAL::temporal,diferencia,suma,promedio            ! *
  REAL::numnodos,celsius,celsiusva,celsiusfi         ! *
  ! * 
  ! temporal    almacena un valor temporal 
  ! diferencia  sera el que deternime cuando terminar
  ! suma        para sacar el promedio
  ! Promedio    promedio xD
  ! numnodos    numero de nodos variantes
  ! celsius     temperatura periferica
  ! celsiusva   temperatura nodos variantes
  ! celsiusfi   temperatura del nodo fijo 
  ! x , y       coordenadas del nodo fijo 


  ! IMPRIMIR TODAS LAS INSTRUCIONES; PEDIDERA DE DATOS :E AL USUARIO >=D

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

  ! Se define el tamaño de la matriz 
  ALLOCATE(plac(ren,col))

  ! se declaran los valores para la matriz 
  Plac(:,:)=celsiusva       ! primero a todos le doy temperatura variante
  Plac(3,8)=celsiusfi       ! temperatura del nodo fijo, se asigna a este
  Plac(1,:)=celsius         ! primer renglon, temperatura periferica
  Plac(ren,:)=celsius       ! ultimo renglon , temperatura periferica
  Plac(:,1)=celsius         ! primera columna, temperatura periferica
  Plac(:,col)=celsius       ! ultima columna, temperatura periferica
  temporal=celsius          ! el primer promedio sera la temperatura variante
  numnodos=(ren*col)-(2*ren+2*col-1)
  ! calculo de numero de nodos que varian

  ! DO blip, para condicionar hasta que la diferencia de temperaturas  entre nodos
  !  variantes sea menor a 0.01

  blip: DO
     ! Antes de volver a calcular las temperaturas de todos los nodos
     !  redefinimos el contador y la suma en 0.
     Suma = 0.
     o=0

! SE calculan de nuevo todas las temp de los nodos variantes
     renglon: DO i=2,col-1
        DO j=2,ren-1
           ! se comienza a operar desde el nodo 2,2... y se evitan los
           !  perifericos , pues estos no varian por eso "j=2, ren-1"

           IF(i==x.AND. j==y) cycle renglon 
           ! nos ayuda a mantener fijo el nodo fijo xD ... si los indices son
           !  iguales simplemente se pasa al siguiente sin hacer
           !   cambios 

           plac(i,j)=(plac(i,j+1)+plac(i,j-1)+plac(i+1,j)+plac(i-1&
                &,j))/4.
! aprovechamos y sacamos una suma, para promediar las diferencias ;)
           suma=suma+plac(i,j)

        END DO
     END DO renglon
! Se termino de variar las temperaturas, veamos si esta vez se cumple 

     o=o+1
     promedio=suma/numnodos
     diferencia=temporal-promedio
! usados mientras se comprobaba el programa
    ! WRITE(*,*)"promedio",promedio,"anterior",temporal
    !WRITE(*,*)"diferencia",diferencia
     IF(sqrt(diferencia**2)<0.01)EXIT
! si no se cumple el temporal toma un nuevo valor , que servira de
     !  referencia al calcular el nuevo primedio
     temporal=promedio
  END DO blip

! SE IMPRIME EL RESULTADO

WRITE(*,*)"La temperatura despues de:",o,"iteraciones en el nodo (5,5)&
     & es:"
WRITE(*,*)plac(5,5)


END PROGRAM TEMP_PLACA



