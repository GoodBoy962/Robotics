function [ T ] = Task22()
    alpha = 2*pi/3;
    T = transl(3 + 2.8*cos(pi-alpha), 1, -2.8*sin(pi-alpha))*troty(pi/2-alpha);
    
    T0 = eye(4);
    
    T1 = [cos(alpha) -sin(alpha) 0 3-3*cos(alpha);
        0 0 -1 2;
        sin(alpha) cos(alpha) 0 -3*sin(alpha);
        0 0 0 1];
    
    trplot(T0, 'frame', 1, 'color', 'r', 'axis', [0, 6, 0, 2, -3, 1]);
    hold on;
    trplot(T1, 'frame', 1, 'color', 'g');
    trplot(T, 'frame', 1, 'color', 'b');
end