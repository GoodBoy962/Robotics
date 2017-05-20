function [ Robot ] = get_robot()

l(1) = Link([0, 0, 0, 0, 1]);
l(2) = Link([0, 1, 0, -pi/2, 0]);
l(3) = Link([0, 1, 0, pi/2, 0]);
l(4) = Link([0, 1, 0, 0, 1]);
l(5) = Link([0, 1, 0, -pi/2, 0]);
l(6) = Link([0, 0, 0, pi/2, 0]);
l(7) = Link([0, 0, 0, 0, 1]);
l(8) = Link([0, 0, 0, 0, 0]);

l(1).qlim = [0, 2];
l(4).qlim = [0, 2];
l(7).qlim = [0, 2];

Robot = SerialLink(l, 'name', 'Robot');

end

