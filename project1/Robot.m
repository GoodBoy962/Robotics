l(1) = Link([-pi/2, 1, 0, 0, 1]);
l(2) = Link([0,1,0,-pi/2,0]);
l(3) = Link([0,1,0,pi/2,0]);
l(4) = Link([-pi/2, 1, 0, 0, 1]);
l(5) = Link([0,1,0,-pi/2,0]);
l(6) = Link([0,0,0,pi/2,0]);
l(7) = Link([0,1,0,0,1]);
l(8) = Link([0,0,0,0,0]);

R = SerialLink(l, 'name', 'Robot');

%DH table
disp(R.char);

%Get transformation matrix || Where function is the last column with 3
%first rows || It's result is an answer
%R.fkine([pi/2, pi/2, 1, pi/2, pi/2, pi/2, 0]);
where(R,[0,pi/2, pi/2, 1, pi/2, pi/2, pi/2, 0],[5,5,5,5,5,5,5,5])
%l(3).qlim = [0, 2];
%l(6).qlim = [0, 2];
%R.plot([0,1,2,3,4,5,6], 'workspace', [-10,10,-10,10,-10,10]);
%R.teach()
%prJoint1 = Prismatic();
%revJoint1 = Revolute();
%robot = SerialLink([prJoint1 revJoint1],'name','ROBOT_THE_BEST');

function [point,rotation_matrix]=where(Robot,angles, extensions)
links = Robot.links;
thetas=[];
for i = 1:length(links)
   if(~links(i).isprismatic)
       thetas=[thetas,angles(i)];
   else
       thetas=[thetas,0];
       links(i).qlim=[0,extensions(i)];
   end
end
transformMatrix=Robot.fkine(thetas);
point=transformMatrix(1:3,4);
rotation_matrix=transformMatrix(1:3,1:3);
Robot.plot([0,1,2,3,4,5,6,7], 'workspace', [-10,10,-10,10,-10,10]);
Robot.teach();
end
