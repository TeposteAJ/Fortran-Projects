PROGRAM if4

! Ahora si un progrma un poco más entretenido, con el determinaremos si dos rectas son paralelas, perpendiculares, o no
! mediante la represetación por ecuaciones

IMPLICIT NONE

REAL::A,B,C,D,E,F               ! TOdos los coheficientes de las dos ecuaciones, datos que se pediran al usuario
REAL::y1,y2,r                   ! los resultados que nos ayudaran a determinar las condiciones


! De nuevo a fastidiar al usuario con frases amables >=), las cuales le sacaran toda la informacion que necesitamos

WRITE(*,*)"Siendo la Ecuación Ax+By=C , introduzca A,B,C en ese orden"
WRITE(*,*)"separadas por coma"
READ(*,*)A,B,C
WRITE(*,*)"Ahora siguiendo los mismos pasos, introduzca A',B',C'"
WRITE(*,*)"de su segunda ecuacion"
READ(*,*)D,E,F

! CAlculos previos, antes del condicional

y1=-A/B

y2=-D/E

r=y1*y2

! inicia el condicional =B
IF (y1==y2) THEN
  WRITE(*,*)"La rectas de las ecuaciones que introdujo son paralelas"
  WRITE(*,*)"ambas pendientes son",y1

ELSE IF (r==-1.)THEN
  WRITE(*,*)"Las rectas de las ecuaciones que introdujo se intersectan"
  WRITE(*,*)"con un ángulo recto, es decir son perpendiculare"

ELSE 
  WRITE(*,*)"LAs rectas de las ecuaciones que introdujo no son paralelas"
  WRITE(*,*)"ni perpendiculares, solo se intersectan"

! TErmina el condicional
END IF

! CErrar programa u.u 
END PROGRAM
