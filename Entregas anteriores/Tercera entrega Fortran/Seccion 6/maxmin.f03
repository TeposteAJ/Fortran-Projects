!
!! maxmin.f03
!! 
!! Made by (Mario Bernardo Montoya Robinson)
!! Login   <mbmontoya@ltsp111>
!! 
!! Started on  Thu Apr  4 15:10:27 2013 Mario Bernardo Montoya Robinson
!! Last update Time-stamp: <2013-abr-08.lunes 15:28:05 (angela)>
!

program mami
real::x,c
real,dimension(1000)::v
integer::i=1,s
character(len=40):: arc


write(*,*) "nombre del archivo"
read(*,*) arc
write(*,*) "el archivo a leer es: ", arc
open(unit=4,file=arc,status="old",action="readwrite",iostat=eap)

do
read(4,*,iostat=eal) v(i)
if(eal<0) exit
if(eal>0) cycle
i=i+1
end do

x=v(1)
c=v(1)
if (v(s)<x) x=v(s)
if (v(s)>c) c=v(s)
write (*,*) "min= ",c,"max= ",x
do s=1,k
write (*,*) x(s)
end do 
end program mami
