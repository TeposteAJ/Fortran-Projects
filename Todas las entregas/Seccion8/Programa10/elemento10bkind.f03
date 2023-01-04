!
!! elemento10b.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 01:42:47 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 19:20:26 (angela)>
!
! La siguiente funcion nos es auxiliar en desarrollar el calculo de
!  una probabilidad tipo poisson . . . introduciendo las variables
!  >=c ...
! Anteponer "REAL" nos evita tener que declarar la variable >=c "nom_function"
REAL FUNCTION probabilidad(k,t,lambda)

  ! Diccionario de variables externas (en el programa)
  INTEGER,INTENT(IN)::k                         ! k... se refiere a el numero de
                                                !  carros que pasan 
  REAL,INTENT(IN)::t,lambda                     ! t,el tiempo...
                                                !  lambda
! VAriables locales 
  REAL,PARAMETER::e=2.71828182845               ! e 
  INTEGER,PARAMETER::ks=SELECTED_INT_KIND(34)   ! auxiliar para kind
  REAL(KIND=ks)::fac                            !* guarda el factorial 

! * con "KIN=variable" ... logramos un mayor >=C rango para el fac...
  !  porque no da un espacio de n por 10 veces ... 

! llamamos a la subrutina que calcula el factorial :E ...   
CALL factorial(k,fac)

! usamos :E el factorial que obtuvimos ... y :E los otros valores :D
!  de los argumentos... lo que operemos se guardaran en los
!   en el nombre de la funcion =o uuuhh!!!
  probabilidad=(e**(-lambda*t))*(((lambda*t)**k)/fac)

END FUNCTION probabilidad
!Termino la funcion :E 

