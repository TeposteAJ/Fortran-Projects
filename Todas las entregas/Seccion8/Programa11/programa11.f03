!
!! programa11.f03
!! 
!! Made by (Angela Teposte Villapando)
!! Login   <angela@ashes>
!! 
!! Started on  Wed May 22 12:11:29 2013 Angela Teposte Villapando
!! Last update Time-stamp: <2013-may-26.domingo 22:14:17 (angela)>
!
! este programa genera un arreglo de n elementos >=c con
!  distribucion de gauss 
PROGRAM proba_gauss

IMPLICIT NONE

REAL::numal1,numal2
REAL,ALLOCATABLE,DIMENSION(:)::matrix
INTEGER::i,n
REAL::media,des
WRITE(*,*)"===========================================================&
     &===="
WRITE(*,*)"PROGRAMA-DISTRIBUCION-GAUSS"
WRITE(*,*)"===========================================================&
     &===="
WRITE(*,*)"Este programa genera una matriz de 'n' elementos, los cual&
     &es estan dados por una distribucion gaussiana para calcular su m&
     &edia y su desviación ..."
WRITE(*,*)"¿Cuantos elementos desea obtener?"
READ(*,*)n

! Definir arreglo 
ALLOCATE(matrix(n))

! Dar los valores a los elementos de " matrix"
i=0
! COn un Do condicional >=D SE LLAMARA a la surutina las veces que
!  sea necesaria para llenar el arreglo, esto es n/2 veces..
DO 
i=i+1
CALL proba_normal(numal1,numal2)
matrix(i)=numal1
! avanzamos i+1 .. para el siguiente elemento que sera y2
i=i+1
matrix(i)=numal2
IF (i==n)EXIT
END DO 
! el arreglo ya tiene los valores de sus elementos 

! ahora con ese arreglo sacamos >=c la media y eso =o
CALL aritmetrica (matrix,n,media,des)
! IMPRESIONAR RESULTADOS ...
WRITE(*,*)"RESULTADOS"
WRITE(*,*)"===========================================================&
     &===="
 WRITE(*,*)" La media calculada de la matriz generada es : ",media
WRITE(*,*)"La media teorica es: 0.0"
WRITE(*,*)"La desviación calculada de la matriz generada es:",des
WRITE(*,*)"La desviación terica es: 1.0"

! FIN del PROGRAMA >=D 

END PROGRAM proba_gauss

