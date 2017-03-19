function [ T ] = Task22()
    alpha = pi/2;
    T = transl(3 + 2.8*cos(pi-alpha), 1, -2.8*sin(pi-alpha))*troty(pi/2-alpha);
end