PROGRAM pendulo
! C= AMOR TE DIGO AMOR Y SUENA DIFERENTE; AMOR QUE TE PRONUNCIO EN
  !  ESO SE CONVIERTE; Y NI TE IMAGINAS... cuando lo hice estaba feliz, no le den nada de importancia
  ! solo es algo x...
  
! Ahora sí el programa sirve para determinar el periodo que tiene un pendulo

IMPLICIT NONE

REAL::long_cm,alfa_g            ! Asi nos dara los datos el usuario, la longuitud en cm y el angulo en grados
REAL::long_m                    ! Almacena la loguitud ya convertida en metros
REAL,PARAMETER::pi=3.141592654 ! el pi es un número bonito
REAL,PARAMETER::grav=9.8       ! se declaran en forma diferente porque son constantes, asi evitamos introducir los numeros y llegar a equivocarnos
REAL::alfa_r,factor,T           ! T es la respuesta, factor para un calculo y alfa_r es para el angulo en radianes


! PEdiremos la longuitud y el angulo del pendulo que el usuario desea calcular su periodo >=)

WRITE(*,*)"Introduzca la longuitud del péndulo en cm"      ! O.o!Hacer notar la unidad en la que se pide en ambos casos
READ(*,*)long_cm
WRITE(*,*)"En seguida introduzca el desplazamiento angular inicial, &
     &en grados"
READ(*,*)alfa_g


! Ahora apliquemos las formulas y los datos que el usuario recien nos proporciono

long_m=long_cm/100          ! Antes que nada cambiamos a las unidades que se requieren
alfa_r=(alfa_g*180)/pi

! ahora si las cuentas, pero es conveniente calcular otras cosas que usaremos dentro de las otras formulas
! en este caso el factor... =b

factor=(1.+(1./4.)*(sin(alfa_r/2.))**2)
T=(2.*pi)*sqrt(long_m/grav)*factor

! PARA RECORDAR 
! Los angulos, lafa, blabla Fortran los toma como radianes, por eso
!  es necesario convertirlos =) , pues lo pedimos al usuario en
!   grados ;) 

WRITE(*,*) T,"este es el periodo del péndulo"       ! LA RESPUESTA


END PROGRAM pendulo
! Colorin_colorado, el programa he terminado
