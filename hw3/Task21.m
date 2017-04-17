l(1) = Link([0, 0, 0, 0, 0]);
l(2) = Link([0, 0, 0.3, pi/2, 0]);
l(3) = Link([0, 0, 1, 0, 0]);
l(4) = Link([0, 0.2, 0, -pi/2, 0]);
l(5) = Link([0, 0, 1.5, 0, 0]);
l(6) = Link([0, 0, 0, pi/2, 0]);
l(7) = Link([0, 0, 0, 0, 0]); % end-effector

R = SerialLink(l, 'name', 'Figure1');

R.plot([0,1,2,3,4,5,6],'workspace', [-1 2 -2 2 -0.5 2]);

R.teach('approach',[pi/2,pi/4,pi/6,pi/2,pi/9,pi/9,0]);