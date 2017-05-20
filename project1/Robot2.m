l(1) = Link([0, 0, 0, 0, 1]);
l(2) = Link([0, 1, 0, 0, 0]);
l(3) = Link([0, 1, 0, pi/2, 0]);
l(4) = Link([0, 1, 0, 0, 1]);
l(5) = Link([0, 1, 0, 0, 0]);
l(6) = Link([0, 0, 0, pi/2, 0]);
l(7) = Link([0, 0, 0, 0, 1]);
l(8) = Link([0, 0, 0, 0, 0]);

Robot = SerialLink(l, 'name', 'Robot');

where(R,[0,pi/2, pi/2, 1, pi/2, pi/2, pi/2, 0],[5,5,5,5,5,5,5,5])
%prJoint1 = Prismatic();
%revJoint1 = Revolute();
%robot = SerialLink([prJoint1 revJoint1],'name','ROBOT_THE_BEST');