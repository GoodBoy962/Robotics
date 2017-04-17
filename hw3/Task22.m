l(1) = Link([-pi/2, 0,  0, pi/2, 0]);
l(2) = Link([0,     0, 50,   0,  0]);
l(3) = Link([pi/2,  0, 0,  pi/2, 0]);
l(4) = Link([0,     60, 0, -pi/2, 0]);
l(5) = Link([-pi/2, 0, 0, pi/2, 0]);
l(6) = Link([pi/2,  0, 0, pi/2, 0]);
l(7) = Link([0,     0, 0,   0,  0]); % end-effector

R = SerialLink(l, 'name', 'Figure');

R.plot([0,1,2,3,4,5,6],'workspace', [-60 120 -120 30 -60 120]);

R.teach('approach',[pi/4-pi/2,pi/18,pi/180*25+pi/2,pi/2,pi/3-pi/2,0+pi/2,0])