mdl_puma560;
radius=0.2;
n=100;

PA = transl([-0.6, 0, -0.5]) %Pto inicial fuera de la trajectoria
PB = transl([-0.4, 0, -0.5]) %Pto. inico dentro de la trayectoria
INI= transl([-0.4, 0.2, -0.5]) %Centro del Circulo

%Empezar a generar trayectorias
for i=1:n
    TRAJ(:,:,i)=INI*trotx(-pi/2)*troty(2*pi*i/n)*transl(0, 0, -radius);

end

%Cinematica Inversa de todas las trayectorias
Q1=p560.ikine6s(TRAJ,'run')
LA=ctraj(PA,PB,50)
QLA=p560.ikine6s(LA,'run')
p560.plot(QLA)


p560.plot(Q1(1,:));

hold on
circle1=circle([-0.4 0.2 -0.5],radius)
plot3(circle1(1,:),circle1(2,:),circle1(3,:),'r','lineWidth',1)

p560.plot(Q1)

% Ptos o coordenadas que pertenecen a la Estrella
t=[0:0.05:1]'
P0=transl([-0.4, 0, -0.5])
P1=transl([-0.53, 0.05, -0.5])
P2=transl([-0.4, 0.4, -0.5])
P3=transl([-0.275, 0.05, -0.5])
P4=transl([-0.575, 0.3, -0.5])
P5=transl([-0.225, 0.3, -0.5])

% Lineas Rectas
L1=ctraj(P0,P1,length(t));
L2=ctraj(P1,P2,length(t));
L3=ctraj(P2,P3,length(t));
L4=ctraj(P3,P4,length(t));
L5=ctraj(P4,P5,length(t));
L6=ctraj(P5,P2,length(t));

%Cinematica inversa
QL1=p560.ikine6s(L1);
QL2=p560.ikine6s(L2);
QL3=p560.ikine6s(L3);
QL4=p560.ikine6s(L4);
QL5=p560.ikine6s(L5);
QL6=p560.ikine6s(L6);


%El grafico de la estrella a seguir
path=[-0.53  0.05 -0.5;
        -0.4   0.4  -0.5; 
        -0.275 0.05 -0.5; 
        -0.575 0.3  -0.5;
        -0.225 0.3  -0.5;
        -0.53  0.05 -0.5]

hold on 
plot3(path(:,1),path(:,2),path(:,3),'color','b','lineWidth',1);

% Grafica de cada una de las trayectorias moviento del robot
p560.plot(QL1)
p560.plot(QL2)
p560.plot(QL3)
p560.plot(QL4)
p560.plot(QL5)
p560.plot(QL5)