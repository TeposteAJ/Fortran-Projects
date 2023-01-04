!
!! sexto.f03
!! 
!! Made by (Angela Judith Teposte Villalpando)
!! Login   <ajteposte@ltsp113>
!! 
!! Started on  Tue Apr  9 15:09:47 2013 Angela Judith Teposte Villalpando
!! Last update Time-stamp: <2013-abr-10.miércoles 16:37:17 (angela)>
!

PROGRAM conjuntos
IMPLICIT NONE 
CHaracter(len=33)::nombreara,nombrearb
REAL,DIMENSION(999)::conjuA,conjuB,union,intersecion,iguales
INTEGER::i=1,real,falla,j,m=1,error,p,g=1,k
REAL::x,a,b

!Dictar instruciones
WRITE(*,*)"nombre el primer archivo,donde almacene su conjunto de datos"
READ(*,*)nombreara
WRITE(*,*)"nombre del siguiente archivo"
READ(*,*)nombrearb

OPEN(UNIT=20,FILE=nombreara,STATUS="OLD",ACTION="READ",IOSTAT=error)

 IF (error==0)THEN
      DO 
         READ(20,*,IOSTAT=error)x
         conjuA(i)=x
                     IF (error>0.or. error<0)EXIT
         i=i+1
      END DO
  ELSE 
   WRITE(*,*)"ocurrio un error al leer archivo:",nombreara
   WRITE(*,*)"verifique la linea",i+1

 END IF 
! se termino de leer el primer archivo y se almaceno en el conjunto
 
k=1
wRITE(*,*)"EL PRIMER AR"
WRITE(*,*)conjua(1:i)
OPEN(UNIT=30,FILE=nombrearb,STATUS="OLD",ACTION="READ",IOSTAT=falla)

IF(falla==0) THEN
         DO 
          READ(30,*,IOSTAT=falla)x
          conjuB(k)=x
         IF (falla<0.or.falla>0)EXIT
          k=k+1
         END DO 
ELSE 
   WRITE(*,*)"ocurrio un error al leer el archivo:",nombrearb
   WRITE(*,*)"verifique la linea",k+1

END IF 
! se termino de leer el segundo archivo
WRITE(*,*)"EL SEGUNDO AR"
WRITE(*,*)conjub(1:k-1)

! COMPARACIONES,CALCULOS,ACCIONES DEL PROGRAMA


DO p=1,i
    a=conjuA(p)
WRITE(*,*)conjuA(p),"a",p
       ju:DO j=1,k
             b=conjuB(j)
WRITE(*,*)conjub(j),"b",j
                        IF (a==b)THEN
                        iguales(g)=a
                          
WRITE(*,*)iguales(g),"igual",g
                         g=g+1
EXIT
                         ELSE
                                union(m)=a
WRITE(*,*) union(m),"union",m

                                m=m+1
                               union(m)=b
WRITE(*,*)union(m),"union",m
                                m=m+1
     
                         
                        END IF 
           END DO ju
END DO


 WRITE(*,*)"CONJUNTO A UNION CON CONJUNTO B"
 WRITE(*,*)union(1:m-1),iguales(1:g-1:2)
    WRITE(*,*)" INTERSECION DEL CONJUNTO A CON B"
    WRITE(*,*)iguales(1:g-1:2)

CLOSE(20)
CLOSE(30)
! leer archivos de entrada

END PROGRAM conjuntos

! mayor = lista (1)

! DO i=1,N

! IF (lista(i)>mayor) THEN
!mayor=lista(i)
! END IF
!END DO 
