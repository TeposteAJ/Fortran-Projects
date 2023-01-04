!
!! programa12.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 14:42:10 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-25.sábado 21:59:27 (angela)>
!
PROGRAM Derivada_up
IMPLICIT NONE
REAL,ALLOCATABLE,DIMENSION(:)::datosx
REAL,ALLOCATABLE,DIMENSION(:)::datosenfun,teoricos
REAL,ALLOCATABLE,DIMENSION(:)::derivados
INTEGER::i,k
REAL::delta,val
REAL,PARAMETER::conver=3.1415926/180.
 !
WRITE(*,*)" HOLA; USUARIO BLABLABLA"
WRITE(*,*)"Deme el numero de datos que dese crear"
READ(*,*)k
WRITE(*,*)"Qué espacio quiere que halla entre el dominio (delta x)?"
READ(*,*)delta

! SE DEFINEN LOS TAMAÑOS DE LAS MATRICES
ALLOCATE(datosx(k+1))
ALLOCATE(derivados(k))
ALLOCATE(teoricos(k))
ALLOCATE(datosenfun(k+1))
! Se obtienen los valores para x, la cual se evalura >=c en la
!  funcion que quieran, en este caso sen(x)...y en cos(x) para
!   comprobar la derivada despues... =o ...
! Se llenaran la mayoria de las matrices 
delta=delta*conver
val=0
DO i=1,k
datosx(i)=val
datosenfun(i)=sin(datosx(i))
teoricos(i)=cos(datosx(i))
val=val+delta
END DO
! necesitara un valor más >=c para poder obtener la ultima derivada
datosx(k+1)=val
datosenfun(k+1)=sin(datosx(k+1))

CALL derivada(k,datosenfun,derivados,delta)
! abrir un archivo para guardar los resultados

WRITE(*,*) " Se creo un archivo llamado 'datosderivadas' donde estan l&
     &a derivada teorica y la derivada calculada"
OPEN(UNIT=6,FILE="datosderivadas",STATUS="REPLACE",ACTION="WRITE")
DO i=1,k
WRITE(6,*) datosx(i),teoricos(i),derivados(i)
END DO 

CLOSE(6)

END PROGRAM Derivada_up
