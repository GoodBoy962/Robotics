function [ res ] = how_to( matrix )

Robot = get_robot();

[U, S, V]=svd(matrix(1:3, 1:3));

translated_matrix = U*V';
matrix = [translated_matrix, matrix(1:3, end); 0 0 0 1];
res = Robot.ikine(matrix);
Robot.plot(res, 'workspace', [-15, 15, -15, 15, -15, 15]);
Robot.teach();
disp('=====angles=====');
disp(res);
end

