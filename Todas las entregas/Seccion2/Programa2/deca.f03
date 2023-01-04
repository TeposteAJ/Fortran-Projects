PROGRAM decaimiento
! COn un poco de Fé =B este programa calculara la edad de "algo" , dandole el 
! porcentaje de radiacion de Carbono 14 :E 

IMPLICIT NONE   !¿Qué será lo que necesitamos =B ?

REAL,PARAMETER::lam=0.0012097         ! Es una constante , por eso se declara diferente con PARAMETER
REAL::frac,porc                        ! Como nos daran y como convertiremos el porcentaje >=c
REAL::Td                               ! La respuesta, años =)


! PEDIR; PEDIR; PEDIR; PEDIR PORCENTAJE en una manera comoda para el usuario , en porcentaje

WRITE(*,*)"Introduzca el porcentaje de carbono 14 del cuerpo"
READ(*,*)porc

! Cáculos necesarios , no olvidar convertir a fraccion el porcentaje, para usar la formula >=c

frac=porc/100

Td=-(1/lam)*log(frac)

! Ahora dar los resultados 

WRITE(*,*) Td,"es la edad del cuerpo"



END PROGRAM decaimiento 
! FIN =B ... Me causo un poco de revuelo la formula del problema, pero solo necesitaba comer =B 
!para darme cuenta que estaba fácil =) 
