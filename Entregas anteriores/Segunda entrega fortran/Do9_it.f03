!
!! presion.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Mon Mar  4 17:31:39 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-09.sábado 12:33:13 (angela)>
!

! programa que calcula la presion, el volumen, o la 
PROGRAM presion 

IMPLICIT NONE

INTEGER::P                    !Presion 
REAL::n,V,T                   !n=numero de moles;V=volumen;T=temperatura
REAL,PARAMETER::R=8.134       ! constante 
REAL::tu                      ! para el aumento de la temperatura
REAL::resp                    !auxiliar en la eleccion de la opcion 

! Por defecto , numero de moles es uno, y la temperatura de 273 kelvins
n=1
T=273

! Se imprime las opciones que se le da al usuario 
WRITE(*,*)"Teniendo una mol de gas ideal a 273°K..."
WRITE(*,*)"Eliga la opcion que desee realizar"
WRITE(*,*)"1. --Obtener las variaciones de volumen del gas"
WRITE(*,*)"     donde 1-1001 seran las presiones"
WRITE(*,*)"2. --Asignar un nuevo valor a la temperatura y presion"
WRITE(*,*)"3. --Asignar un nuevo valor al volumen y temperatura"
WRITE(*,*)"4. --Asignar un nuevo valor al # de moles y la presion"
WRITE(*,*)"5. --Asiganr un nuevo valor a la temperatura y al # de mole&
     &s"
WRITE(*,*)"6. --Solamente se incrementara la temperatura"
WRITE(*,*)"INTRODUZCA EL NUMERO DE LA OPCION DESEADA SOLAMENTE"
READ(*,*)resp

! condicional para realizar lo que el usuario pide 
!Para opcion 1... 
IF(resp==1)THEN
               DO P=1,1001,100
                  V=(n*R*T)/P
                  WRITE(*,*)"El volumen a",P,"de presión es:",V,"litros"
               END DO
!Para opcion 2
ELSE IF(resp==2)THEN
               WRITE(*,*)"Introduzca el valor para temperatura (grados&
                    & Kelvin)"
               READ(*,*)T
               WRITE(*,*)"Introduzca el valor para la presión (kpascal&
                    &)"
               READ(*,*)P

                        V=(N*R*T)/P
               WRITE(*,*)"El volumen del gas es:",V,"litros"
!Para opcion 3
ELSE IF(resp==3)THEN
               WRITE(*,*)"Introduzca el valor para la temperatura (gra&
                    &dos Kelvin)"
               READ(*,*)T
               WRITE(*,*)"Introduzca el valor para el volumen (en litros)" 
               READ(*,*)V
                         P=(N*R*T)/V
               WRITE(*,*)"El valor para la presión es:",P,"kPascales"
!Para opcion 4
ELSE IF(resp==4)THEN
                WRITE(*,*)"Introduzca el # de moles de gas"
                READ(*,*)n
                WRITE(*,*)"Introduzca el valor de la presión (en Kpascales)"
                READ(*,*)P
                           V=(n*T*R)/P
                WRITE(*,*)"El valor del volumen del gas es:",V,"litros&
                     &"
!Para opcion 5
ELSE IF (resp==5)THEN

                WRITE(*,*)"Introduzca el # de moles de gas"
                READ(*,*)n
                WRITE(*,*)"Introduzca el valor de la temperatura (En g&
                     &rados kelvin)"
                READ(*,*)T
                           P=(n*T*R)/T
                WRITE(*,*)"La presión para el gas es:",P,"Kpascales"
! Para opcion 6 
ELSE
                WRITE(*,*)"Cuantos grados Kelvin, desea aumentar la te&
                     &mperatura"
                READ(*,*)tu
                           P=(n*T*R)/(T+tu)
                WRITE(*,*)"La presión para el gas es:",P,"Kpascales, c&
                     &uando la temperatura aumenta",tu,"grados Kelvins"
                

END IF
!termina el condicional 

!Termmina el programa
END PROGRAM presion

