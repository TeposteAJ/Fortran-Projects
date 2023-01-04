!
!! elemento6.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun May 19 21:34:59 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 15:02:18 (angela)>
!

! Esta subrutina nos permite encontrar una ecuacion que mejor se
!  ajuste a un cojunto de datos... por medio de los minimos cuadrados

SUBROUTINE cuadrados (arrx,arry,N,m,b,r)
!Declaración de variables
IMPLICIT NONE
! ARGUMENTOS 
INTEGER,INTENT(IN)::N                    ! n° de datos
REAL,DIMENSION(N),INTENT(IN)::arrx,arry  ! arreglos de cada componente 
REAL,INTENT(OUT)::m,b,r                  ! resultados
! LOCALES
REAL::sumax,sumax2,sumay,sumay2,sumaxy   ! diversas sumas necesarias
REAL::mediax,mediay                      ! medias necesarias
INTEGER::i                               ! contador

! CALCULOS DE LA SUBRUTINA 
! suma:E de los arreglos y del producto de los arreglos 
sumax=SUM(arrx)
sumay=SUM(arry)
sumaxy=SUM(arry*arrx)

! Suma de los componente al cuadrado
  DO i=1,N
     sumax2=sumax2+(arrx(i)**2)
     sumay2=sumay2+(arry(i)**2)
  END DO
! Calculo de las medias
  mediax=(1./N)*sumax
  mediay=(1./N)*sumay
! Calculo de m y b para la ecuación
  m=(sumaxy-(sumax*mediay))/(sumax2-(sumax*mediax))
  b=mediay-(mediax*m)

! Calculo del coeficiente de correlación lineal
mediax=(N*sumaxy)-(sumax*sumay)
mediay=sqrt(((n*sumax2)-sumax**2)*((N*sumay2)-sumay**2))
r=mediax/mediay

! Fin de la surutina

END SUBROUTINE cuadrados
