function [transform_matrix]=where_no_disp(angles, extensions)

Robot = get_robot();

Robot.offset = extensions;
transform_matrix = Robot.fkine(angles);


end

