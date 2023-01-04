!
!! examen.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp59>
!! 
!! Started on  Mon May 27 12:37:00 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-27.lunes 13:57:56 (ajteposte)>
!

! Con este programa se evaluara >=c las subrutinas y funciones
  !  creadas...
! su fin existencial es encontrar el maximo en un intervalo dado =o

PROGRAM examen_final
! Declaracion de Variables :E 

IMPLICIT NONE
!ARGUMENTOS... 
INTEGER::N                                   !extension de arreglos
REAL,ALLOCATABLE,DIMENSION(:)::valx,evax     ! arreglos
REAL::a,b                                    ! intervalo
INTEGER,DIMENSION(1)::maxx                   !respuesta,maximo
REAL,EXTERNAL::prueba                        ! funcion =o
REAL::delta
INTEGER::i
REAL::ainicial

! IMPRMIR INSTRUCIONES 

WRITE(*,*)"Soy un programa que encuentra un maximo en una funcion en e&
     &ste caso de :"
WRITE(*,*) " f(x) = 3x³+1/9"
WRITE(*,*)"Deme el intervalo que desea encontrar su maximo"
WRITE(*,*)"[a,b]"
READ(*,*)a,b
WRITE(*,*)" Ahora digame en cuantos espacio divido su intevalo"
WRITE(*,*)"Entre más grande mejor"
READ(*,*)N

! Se calculara =o!!! el delta x
delta=((b-a)/(N-1))
 ! Se declran las matrices =o
ALLOCATE(valx(N))
ALLOCATE(evax(N))

! Se guarda el valor de a inicia
ainicial=a
! Se llena la matrix :E de los x a evaluar

DO i=1,N
valx(i)=a
a=a+delta
END DO 
!WRITE(*,*)valx
CALL maxi(N,valx,evax,prueba,ainicial,b,maxx)

! SE IMPRESIONAN RESULTADOS
WRITE(*,*)"El maximo relativo, en el intervalo de:[",ainicial,",",b,"]"
WRITE(*,*)"Para la f(x) = 3x³+1/9 ...ES en x= ",valx(maxx)
WRITE(*,*)"y toma un contradominio de :",evax(maxx)

! Termino el programita :E 
END PROGRAM examen_final
