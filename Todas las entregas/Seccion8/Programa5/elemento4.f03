!
!! elemento4.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun May 19 15:05:36 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-25.sábado 20:48:58 (angela)>
!

! SUBRUTINA AUXILIAR PARA ENCONTRAR LA MEDIA DE UN ARREGLO DE RANGO 1
SUBROUTINE mediana (datos,k,medianaf)

! ARGUMENTOS
INTEGER,INTENT(IN)::k                    ! n° de datos
REAL,DIMENSION(k),INTENT(INOUT)::datos   ! arreglo con datos
REAL,INTENT(OUT)::medianaf               ! respuesta (la media)
! VARIABLES LOCALES
INTEGER::pl                              ! auxiliar para definir si
                                         !es par 
 

CALL ordenar(datos,k)


! Veremos si el total de datos es par o impar, para calcular la
  !  mediana, con un IF condicionaremos lo que se hara en cada caso >=c...
  If(mod(k,2)==0)THEN ! la funcion mod nos permite determinar si es par...
     pl=k/2.

! en este caso resulta par así que se toma el elemento siguiente y se promedian
     medianaf=(datos(pl) + datos(pl+1))/2.
    
! Si no fue par, naturalmente tiene que ser impar... >=C .. y esto es
     !  fácil solo se divide el total entre dos y se toma el elemento
     !   que sigue :E al entero de la division
  ELSE
     pl=k/2.
 
    medianaf= datos(pl+1) 
  END IF

END SUBROUTINE mediana
