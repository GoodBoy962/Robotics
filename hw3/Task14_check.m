L0 = Link(zeros(1, 5));
L1 = Link('alpha', -pi/2, 'a', 0, 'theta', 0);
L2 = Link('alpha', 0, 'a', 0, 'theta', 0);
L3 = Link('alpha', 0, 'a', 0, 'd', 2);

R = SerialLink([L0 L1 L2 L3], 'name', 'Figure 2');
R.plot([0:3], 'workspace', [-5 5 -5 5 -5 5]);