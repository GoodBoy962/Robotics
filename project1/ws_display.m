function [ ] = ws_display()

R = get_robot();

q0=[0 0 0 0 0 0 0 0];
q1b=[3*pi .1745 pi/3 pi/2 .5236 pi/1.5 0 0];
q1=[.0873 .1745 .3491 .1745 .5236 .8727 0 0];
q2=[.0873 0 -.3491 .2618 .8727 1.2217 0];
q3=[-.1745 -.3491 .5236 .0873 -.1222 .3491 0];
q4=[.1745 .1745 0 -.1396 .3191 -.5236 0];
q5=[-.3491 -.3491 -.3491 0 -.0873 0 0];


t=0:.03:2;%Time vector & steps
traj1=jtraj(q0,q1,t); 
% traj2=jtraj(q1,q2,t);
% traj3=jtraj(q2,q3,t);
% traj4=jtraj(q3,q4,t);
% traj5=jtraj(q4,q5,t);
% traj6=jtraj(q5,q0,t);

% R.links(1).qlim = [0, 2];
% R.links(4).qlim = [0, 2];
% R.links(7).qlim = [0, 2];

R.plot(traj1, 'workspace', [-10,10,-10,10,-10,10])

end

