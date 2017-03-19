function [] = Task23( T )
    clf;
    figure(1);
    format compact

    % example of homogenious matrix
    % T = [sqrt(2)/2 sqrt(2)/2 0 5;
    %     -sqrt(2)/2 sqrt(2)/2 0 5;
    %     0 0 1 5;
    %     0 0 0 5];

    vert = [1 1 -1 1; 
            -1 1 -1 1; 
            -1 1 1 1; 
            1 1 1 1; 
            -1 -1 1 1;
            1 -1 1 1; 
            1 -1 -1 1;
            -1 -1 -1 1];


    mod_vert = (T * vert.')';

    fac = [1 2 3 4; 
           4 3 5 6; 
           6 7 8 5; 
           1 2 8 7; 
           6 7 1 4; 
           2 3 5 8];

    patch('Faces', fac, 'Vertices', vert(:, 1:3), 'FaceColor', 'r');
    axis([-5, 5, -5, 5, -5, 5]);
    axis equal;
    alpha('color');
    alphamap('rampdown');

    hold on


%     patch('Faces', fac, 'Vertices', mod_vert(:, 1:3), 'FaceColor', 'r');
%     alpha('color');
%     view(30, 30);
%     tranimate;
end