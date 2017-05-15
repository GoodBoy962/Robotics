l(1) = Link([0,1,0,-pi/2,0]);
l(2) = Link([0,1,0,pi/2,0]);
l(3) = Link([-pi/2, 1, 0, 0, 1]);
l(4) = Link([0,1,0,-pi/2,0]);
l(5) = Link([0,0,0,pi/2,0]);
l(6) = Link([0,1,0,0,1]);
l(7) = Link([0,0,0,0,0]);

R = SerialLink(l, 'name', 'Robot');

%DH table
disp(R.char);

%Get transformation matrix || Where function is the last column with 3
%first rows || It's result is an answer
R.fkine([pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, 0])

l(3).qlim = [0, 2];
l(6).qlim = [0, 2];
R.plot([0,1,2,3,4,5,6], 'workspace', [-10,10,-10,10,-10,10]);
R.teach()

