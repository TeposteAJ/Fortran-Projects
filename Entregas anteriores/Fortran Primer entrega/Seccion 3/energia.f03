Program energia_k_u
! Hola ANgela :) ojala te sirva el programa a la primera =B, lo podrás usar
! para problemas fáciles de energias >=), en secundaria hubiera sido muy útil u.u 
! =P Esta divertido hablarse en tercera persona

IMPLICIT NONE
REAL,PARAMETER::grav=9.8      ! gravedada es una "constante", >=C jum! si varia con la altitud y eso pero no en este caso
REAL::vel                     !Cambiara con la gravedad y la altura ;)
REAL:: masa,h                 ! Los datos dados por el usuario =D 
REAL:: energ_u,energ_k        ! Las dos respuestas que buscamos

! La hora de pedir datos >=D, se convierte en mi favorita
! IMPORTANTE!!! los datos deben tener ciertas unidades, si no serviran de mucho los resultados
! asi que hay que aclarar al usuario en que unidades se piden >=D, que batalle si las tiene en otras 
!muajajaja >=), o que use otro programa para convertirlas =B

WRITE(*,*)"Introduzca la masa del objeto en kilogramos"
READ(*,*)masa
WRITE(*,*)" Ahora introduzca la altura desde donde será soltado el obj&
     &eto, en metros"
READ(*,*)h

! Usemos lo que pedimos, ya que , ya lo pedimos =c... =B , primero sacaremos la velocidad
! para poder usarla déspues en la otra formula... es necesario =c ... blablabla a trabajar

vel=(2.*grav*h)**(1/2)
energ_u=masa*grav*h
energ_k=(1/2)*(masa)*(((vel)**(1/2)))

! Despues de el arduo trabajo, ta da! la respuesta, hay que enunciarsela ;)

WRITE(*,*)vel,"rapidez con la que golpeo el suelo", energ_u,"energia po&
     &tecial en Joules",energ_k,"energia cientica, en Joules"
	 
! Notese lo bonito que es dar los datos en unidades =B <3 !!! los amo...


END PROGRAM energia_k_u

! Final... =B ... o no lo note el nombre del programa pareciera tener una carita "k_u" 
! como de descepcion y alguien golpeado de un ojo =o! jajaja ni alcazo lo que escribo =B
! planeo reirme de todo esto cuando vuelva a leerlos 


