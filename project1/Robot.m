l(1) = Link([0,0,0,0,0]);
l(2) = Link([0,1,2,3*pi/2,0]);
l(3) = Link([0, 0, 1, 0, 1]);
l(4) = Link([0,2,2,pi/3,0]);
l(5) = Link([0,1,1,0,1]);
l(6) = Link([0,0,0,0,0]);

R = SerialLink(l, 'name', 'Robot');

%DH table
disp(R.char);

R.plot([0,1,2,3,4,5], 'workspace', [-10,10,-10,10,-10,10]);


