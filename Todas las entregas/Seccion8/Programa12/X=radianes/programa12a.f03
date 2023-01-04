!
!! programa12.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 14:42:10 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 23:48:27 (angela)>
!
! ESte programa calula la derivada :E de sen(x) con ayuda de una
!  subrutina :E y guarda los valores en un archivo para despues
!   graficar

PROGRAM Derivada_up
! DEclarar variables
IMPLICIT NONE
REAL,ALLOCATABLE,DIMENSION(:)::datosx               !arreglo de rango
REAL,ALLOCATABLE,DIMENSION(:)::datosenfun,teoricos  !sen(x) y cos(x)
REAL,ALLOCATABLE,DIMENSION(:)::derivados            ! arreglo derivada
INTEGER::i,k                                        !i contador,k tamaño
REAL::delta,val                                     ! delta y auxiliar

 !SE IMPRIMEN INSTRUCIONES :E n_n ... 
WRITE(*,*)"===========================================================&
     &==="
WRITE(*,*)"PROGRAMA-DERIVADA"
WRITE(*,*)"===========================================================&
     &==="
WRITE(*,*)" HOLA; USUARIO YO SIRVO PARA CALCULAR LA DERIVADA, :E HOY E&
     &N ESPECIAL DE Sen(x).... "
WRITE(*,*)"Deme el numero de datos que dese crear, iniciare en x=0... donde x son radianes"
READ(*,*)k
WRITE(*,*)"Qué espacio quiere que halla entre el dominio (delta x)?"
WRITE(*,*)"Más cerca de 0 mejor "
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
val=0
DO i=1,k
datosx(i)=val
datosenfun(i)=sin(datosx(i))
teoricos(i)=cos(datosx(i))
val=val+delta
END DO
! necesitara un valor más >=c para poder obtener la ultima derivada
datosx(k+1)=val+delta
datosenfun(k+1)=sin(datosx(k+1))


!! se calcula en base al arreglo Sen(x)... la derivada 
CALL derivada(k,datosenfun,derivados,delta)
! abrir un archivo para guardar los resultados

! Ahora informamos al usuario que >=C ya sus datos estan en un
!  archivo... para que los vea a
WRITE(*,*) " Se creo un archivo llamado 'datosderivadas' donde estan l&
     &a derivada teorica y la derivada calculada"

! Se crea el archivo"
OPEN(UNIT=6,FILE="datosderivadas",STATUS="REPLACE",ACTION="WRITE")
! Se guardan los datos en el , acomodados por lineas :E 
DO i=1,k
WRITE(6,*) datosx(i),teoricos(i),derivados(i)
END DO 
! Se cierra el archivo 
CLOSE(6)

END PROGRAM Derivada_up
! Termino el programa 
