clear;

l(1) = Link([0, 1, 0, 0, 1]);
l(2) = Link([0, 1, 0, -pi/2, 1]);
l(3) = Link([0, 0.5, 0, -pi/2, 0]);
l(4) = Link([0,0,0,0,0]); % end effector

Robot = SerialLink(l, 'name', 'Figure 2');
Robot.plot([0, 1, 2, 3], 'workspace', [-2 2 -2 2 -2 2]);