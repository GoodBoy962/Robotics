function [transform_matrix]=where(angles, extensions)

Robot = get_robot();

links = Robot.links;
thetas = [];

for i = 1:length(links)
   if(~links(i).isprismatic)
       thetas(i) = angles(i);
   else
       thetas(i) = 0;
   end
end

Robot.offset = extensions;
transform_matrix = Robot.fkine(thetas);

Robot.plot(thetas, 'workspace', [-10,10,-10,10,-10,10]);

Robot.teach();

end

