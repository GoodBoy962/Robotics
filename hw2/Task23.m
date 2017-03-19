function [] = Task23( T )

    A = [-1 -1 -1 1];
    B = [1 -1 -1 1];
    C = [-1 1 -1 1];
    D = [-1 -1 1 1];
    E = [-1 1 1 1];
    F = [1 -1 1 1];
    G = [1 1 -1 1];
    H = [1 1 1 1];
    
    P = [A;B;F;H;G;C;A;D;E;H;F;D;E;C;G;B];
    
    P1 = (T * P.')';
    
    plot3(P(:,1),P(:,2),P(:,3))
    hold on;
    plot3(P1(:,1),P1(:,2),P1(:,3))
    tranimate(T);
end