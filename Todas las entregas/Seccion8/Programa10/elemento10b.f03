!
!! elemento10b.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 01:42:47 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 19:51:44 (angela)>
!
! Funcion para estimar la probabilidad en una Distribucion de Poisson
REAL FUNCTION probabilidad(k,t,lambda)
! Declaracion de variables
IMPLICIT NONE
! ARGUMENTOS
INTEGER,INTENT(IN)::k             ! numero para el factorial
REAL,INTENT(IN)::t,lambda         ! tiempo y valor de lambda
!LOCALES
REAL,PARAMETER::e=2.71828182845   ! :E valor >=D aproximado de "e"
REAL::fac                         ! >=c valor del factorial


! llamamos a la subrutina del factorial >=c para calcular el fac de "k"
CALL factorial(k,fac)

! ya con el facotorial procedemos a usarlo para calcular la
!  probabilidad 
probabilidad=(e**(-lambda*t))*(((lambda*t)**k)/fac)

END FUNCTION probabilidad
! Termina la función 
