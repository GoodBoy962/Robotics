l(1) = Link([0, 0, 0, 0, 0]);
l(2) = Link([0, 0, 0.3, pi/2, 0]);
l(3) = Link([0, 0, 1, 0, 0]);
l(4) = Link([0, 0.2, 0, -pi/2, 0]);
l(5) = Link([0, 0, 1.5, 0, 0]);
l(6) = Link([0, 0, 0, pi/2, 0]);
l(7) = Link([0, 0, 0, 0, 0]); % end-effector

configurations = [
0, 107.458, 112.460, -7.662, 0, 0;
88.67, -176.682, 1.606, -116.716, 22.171, -40.056;
113.841, 4.741, -179.093, -55.954, -63.659, -42.463;
180.0, 107.458, -147.375, -7.662, -164.675, 180.0;
-11.768, -105.495, -114.490, 1.243, 6.408, -79.398;
];
configurations(:, 7) = 0; % end-effector theta

R = SerialLink(l, 'name', 'Figure1');

% R.plot([0,1,2,3,4,5,6],'workspace', [-0.5 2 -2 2 -0.5 2]);

ans = R.fkine(configurations); % get end-effector location 1.1b
disp(ans);