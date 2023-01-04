!
!! mediaart.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Sun Mar  3 21:55:17 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-mar-11.lunes 07:27:10 (angela)>
!

! Siguiendo con las sumas este programa calculara la media de
! tendencia central

PROGRAM media_rms

IMPLICIT NONE      !Declarar variables 

REAL::blip         !Datos
INTEGER::N=0       !Contador
REAL::sumita=0     !Guardar la suma
REAL::mediar       !La media
INTEGER::dat       !Número de datoa para el usuario

!Imprimir en pantalla las instruciones para el usuario
WRITE(*,*)"Este programa le permitira conocer la media geometrica  de los datos que introduzca acontinuacion"
WRITE(*,*)"Teclé los datos, de uno en uno ahora"
READ(*,*)blip
WRITE(*,*)" Cuando ya introduzca todos los datos, de un valor arbitrario negativ&o, para continuar con el resultado"

!Ahora si repitamos operaciones para más datos

 DO N=1,dat
                IF(blip>=0)THEN

           sumita=sumita+(blip**2)

           WRITE(*,*)"Deme otro dato"
           READ(*,*)blip
               ELSE
               mediar=sqrt((1./dat)*sumita)
               WRITE(*,*)" El ültimo dato que introdujo fue negativo, &
                    &la media hasta antes de este es:",mediar 
                     EXIT
               END IF
 END DO


!Pregunta cuantos datos introdujo el usuario

WRITE(*,*)"Cuantos datos fueron los que introdujo, sin contar el ultim&
     &o dato negativo"
READ(*,*)dat

!Si conincide los datos que dijo introducir con los que en verdad
! introdujo , si no es un mentiroso el usuario >=c... o un poco distraido

              IF(dat==N)THEN

                  mediar=sqrt((1./dat)*sumita)
                  WRITE(*,*)"la media Rms es",mediar
               
              ELSE 
                   WRITE(*,*)"No coincide el números de datos que dijo introducio y los que el programa conto"
       
              END IF 

! Fin del programa 

END PROGRAM media_rms

! Encontre más funcional preguntar despues cuantos datos introdujo... >=c







