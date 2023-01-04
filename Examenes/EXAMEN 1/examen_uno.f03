!
!! examen.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp57>
!! 
!! Started on  Mon Feb 25 11:57:46 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-feb-25.lunes 12:19:40 (ajteposte)>
!
PROGRAM clima
IMPLICIT NONE
REAL:: grad         ! será la temperatura en grados farhenheit
REAL:: F            ! esta se le perdira a el usuario

WRITE(*,*)"Hola! usuario, para poderte aconsejar sobre el clima..."
WRITE(*,*)"Introduce la temperatura actuial, en grados Farhenheit"
READ(*,*) F

grad=( 5./9.) *(F-32.)

IF (grad <= 20. ) THEN
    WRITE(*,*)"=o jamás he experimentado ese tipo de temperaturas,"
    WRITE(*,*)"no puedo aconsejarte u.u! por ahora..."
    WRITE(*,*)"SORRY!, yo soy de climas cálidos"

ELSE IF( 20.<grad .AND. grad<=33. )THEN
   WRITE(*,*)"La temperatura no es AGRADABLE C= , te aconsejaria diver&
        &tirte"
   WRITE(*,*)" Lindo día! =D BE Happy !!"

ELSE IF (33.<grad .AND. grad <=38.) THEN
    WRITE(*,*)"La temperatura no es ideal =B, pero aun asi puedes hacer&
        & tus deberes"
    WRITE(*,*)"nada que no sea AGUANTABLE"
    WRITE(*,*)"Don worry! c="

ELSE IF ( 38.<grad .AND. grad<=45.)THEN
    WRITE(*,*)"El clima esta algo caliente, salga si es muy indispensa&
         &ble hacerlos =s"
    WRITE(*,*)"Escuche una oferta de aires acondicionados en... jajaja&
         & es broma"
    WRITE(*,*)"igual disfruta tu día"

ELSE IF ( 45.<grad.AND. grad<=50.)THEN
    WRITE(*,*)" Quedate encerrado en tu casa con la refri prendida xD,&
         & esto es un horno"
    WRITE(*,*)"Busca tips para prevenir la deshidratacion"
ELSE
    WRITE(*,*)"¿Es enserio?,¿ A caso vives en el infierno? , o que? D=&
         &"
END IF 

WRITE(*,*)"La temperatura es de",F,"grados Farhenheit o",grad,"grados &
     &Celsius"

END PROGRAM clima 



