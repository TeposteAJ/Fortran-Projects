!
!! elemento3.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue May 14 12:33:04 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-25.sábado 20:40:45 (angela)>
!

! Subrutina que nos auxiliara al ordenar de manera ascendente un
!  arreglo :E 
SUBROUTINE ordenar(datos,k)

! Variables externas(ARGUMENTOS)
INTEGER,INTENT(INOUT)::k               ! n° de datos
REAL,DIMENSION(k),INTENT(INOUT)::datos ! arreglo con los datos :E
INTEGER,DIMENSION(1)::lugar            ! arreglo para guardar el
                                       !lugar , solo acepta arreglos
                                       ! la funcion minloc

! VARIABLES LOCALES 
INTEGER::j=1                           ! contador :E           
INTEGER::x,l=0                         !x=auxiliar para el lugar
REAL::temporal                         ! ayuda al intercambio de lugares


! CALCULOS DEL PROGRAMA 
! buscamos el minimo y ordenamos con el DO 
  DO j=1,k

     lugar=minloc(datos(j:k))
! minloc me devuelve el lugar del minimo, "m" tiene que ser un
     !  arreglo... en este caso use uno de tamaño 1 

     x=lugar(1)+l
     ! necesario para que te de la posición correcta, contando los valores
     !  que ya pasaron... 
     l=l+1
     ! intercambiar el orden de los valores...
     temporal=datos(j)
     datos(j)=datos(x)
     datos(x)=temporal
  END DO

! ya esta ordenado de manera ascendente el conjunto, en el mismo
  !  arreglo inicial

! FIN DE LA SUBRUTINA
END SUBROUTINE ordenar
