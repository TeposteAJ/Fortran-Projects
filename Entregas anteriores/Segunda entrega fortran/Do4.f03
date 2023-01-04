!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-10.domingo 22:43:22 (angela)>
!

! Siguiendo con las sumas este programa calculara la media aritmetica
!  y la desviacion estadar 

! Inicia el programa
PROGRAM media_aritmetrica

! Declaración de variables
IMPLICIT NONE

REAL::k,x,y,z             ! k para el valor de los datos,x,y&z para
                          ! desglosar ecuacion compleja 
REAL::N=0                 ! Contador
REAL::sumita=0            ! guardara la suma de los datos introducido
REAL::Desviacion          ! resultado de la desviación
REAL::media               ! resultado de la media geometrica
REAL::sumitacuadrada=0    ! guardara la suma de los datos elevados al
                          !  cuadrado

! Imprimir ordenes >=D , para que el usuario trabaje un poco =)

WRITE(*,*)"Este programa le permitira conocer la media aritmetica y la&
     & desviacion estandar de los datos que introduzca acontinuacion"
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)k
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

! DO while, pedira y sumara datos, hasta que uno de los datos
!  introducido sea negativo... pasara a lo siguiente
DO WHILE (k>=0.)

sumita=sumita+k
sumitacuadrada=sumitacuadrada+(k**2)
N=N+1
WRITE(*,*)"Deme otro dato"
READ(*,*)k

END DO

! Termina el Do y pasamos a los calculos

x=N*sumitacuadrada             ! 1er parte de la ecuacion de la desviacion
y=sumita**2                    ! 2da parte de la ecuacion de la desviacion
z=N*(N-1)                      ! 3er parte de la ecuacion de la desviacion
media= (1./N)*sumita           ! Media aritmetica
Desviacion=sqrt((x-y)/z)       ! Desviacion estandar

! "Impresionamos" resultados al usuario =B
WRITE(*,*)"los resultados de sus datos son:"
WRITE(*,*)"Media aritmetica",media
WRITE(*,*)"Desviacion estandar",Desviacion

END PROGRAM media_aritmetrica
! FIn del programa >=) muajaja




! NOTA: mis compañeros mencionaron que estaban mal las formulas y que
!  por eso no les daban bien este programa, buscaron y compararon con
!  wikipedia -.- en mi caso, no tube problemas



