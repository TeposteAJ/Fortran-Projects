!
!! Doiper.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 00:23:38 (angela)>
!

! Siguiendo con las sumas este programa calculara la media armonica

!Inicia el programa
PROGRAM media_armonica

! Declaracion de variables 
IMPLICIT NONE

REAL::ju       ! valores del usuario
INTEGER::N     ! Contador
REAL::suma=0   ! guardar suma de datos
REAL::media    ! resultado de la media
INTEGER::dats  ! numero de datos

! Imprimir descripcion e intruciones del programa al usuario

WRITE(*,*)"Este programa le permitira conocer la media armonica  de lo&
     &s datos que introduzca acontinuacion"
WRITE(*,*)"Cuantos datos introducira" 
READ(*,*)dats
WRITE(*,*)" Puede interrumpir sus datos, dando un numero negativo, par&
     &a proceder a tener el resultado"


! Inicia un Do que contendra casi todo el programa, es toda la parte
!  de la suma e incluzo se hacen los calculos dela media y se
!   imprimen datos en él.
DO N=1,dats

WRITE(*,*)"Escriba sus datos" 
READ(*,*)ju
           ! Primer IF para condicionar el valor de los datos 
            IF (ju<=0.)THEN
                WRITE(*,*)"El valor de la media, hasta este dato es",suma
                WRITE(*,*)" si no termino de introducir los datos, fue porque aborto al teclar un numero negativo"
            ELSE 

                suma=suma+(1/ju)
            END IF
           ! Termina el primer IF y el DO
END DO    
           ! Inicia un segundo IF
                          IF(dats==N-1)THEN                         
                             !  Fue necesario el -1 para contrarestar
                             !   iniciar en 1 xP ni alcaso
                                 media=N/suma
                                 WRITE(*,*)"la media Rms es",media
               
                          ELSE 
  
                                WRITE(*,*)"No coincide el números de datos que dijo introducio y los que el programa conto"
                     
     
                                
      
                          END IF 
                          ! Termina el segundo IF

END PROGRAM media_armonica

! Temina el programa 

! En el iterativo, no le veo mucho sentido que el usuario de el
!  numero de datos a introducir, pero como practica esta bien ;)








