!
!! elemento2.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue May 14 11:18:44 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-may-21.martes 20:31:56 (angela)>
!
! Subrutina:B servira para calcular la media aritmetica y la desviacion estandar en cualquier
!  programa que sea llamada. 

! aritmetrica es el nombre... y este mismo lo usaremos para llamarla despues
SUBROUTINE aritmetrica(datos,k,media,des)
! Diccionario de variables externas
IMPLICIT NONE
INTEGER,INTENT(IN)::k                !n° de elementos
REAL,DIMENSION(k),INTENT(IN)::datos  ! arreglo con datos
REAL,INTENT(OUT)::media              !respuesta media
REAL,INTENT(OUT)::des                !respuesta desviacion
! * IN indica que solo se usará ese valor para operar, no se modifica..."solo entra"
! * OUT indica que sera un valor que saldrá al programa, puede ser modificado

!Variables locales... solo se usan en la subrutina y no se declaran 
!en el programa principal
REAL::suma1=0              ! suma1=suma de todos los elementos
REAL::suma2=0              ! suma2=suma el cuadrado de todos los elementos
INTEGER::j                 ! contador para un DO

! Las operaciones del programa C=

!sumar todos los datos...
suma1=SUM(datos)
! el promedio... 
media=suma1/k

! suma de los datos al cuadrado ;) 
DO j=1,k
suma2=(datos(j)**2)+suma2
END DO 


! calculo de la desviación
des=sqrt(((k*suma2)-(suma1**2))/(k*(k-1)))

! FIn de la subrutine >=D EXITO!!! PRIMERA SUBRUTINA DE MI VIDA
END SUBROUTINE aritmetrica

