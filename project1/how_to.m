function [ res ] = how_to( matrix )

Robot = get_robot();

res = Robot.ikine(matrix);

end

