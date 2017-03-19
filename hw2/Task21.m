function [ T ] = Task21( )
    T = transl(4,0,-4)*rpy2tr(pi/2, pi, 0);
    T0 = [1 0 0 0;
        0 1 0 0;
        0 0 1 0;
        0 0 0 1];
    T1 = [0 -1 0 4;
        -1 0 0 2;
        0 0 -1 0;
        0 0 0 1];
    T12 = [0 sqrt(2)/2 sqrt(2)/2 -4;
        0 -sqrt(2)/2 sqrt(2)/2 4;
        1 0 0 0;
        0 0 0 1];
    T3 = T;
    trplot(T0, 'frame', 1, 'color', 'r', 'axis', [-8, 8, -8, 8, -8, 8]);
    hold on;
    trplot(T1, 'frame', 1, 'color', 'g');
    trplot(T1*T12, 'frame', 1, 'color', 'b');
    trplot(T3, 'frame', 1, 'color', 'm');
end