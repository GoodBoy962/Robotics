function [transform_matrix]=where(angles, extensions)

Robot = get_robot();
Robot.offset = extensions;
transform_matrix = Robot.fkine(angles);

Robot.plot(angles, 'workspace', [-15, 15, -15, 15, -15, 15]);

Robot.teach();

end

