function [transform_matrix]=where(Robot, angles, extensions)

links = Robot.links;
thetas = [];

for i = 1:length(links)
   if(~links(i).isprismatic)
       thetas(i) = angles(i);
   else
       thetas(i) = 0;
       links(i).qlim = [0,extensions(i)];
   end
end

transform_matrix = Robot.fkine(thetas);
% position = transform_matrix(1:3,4);
% rotation_matrix = transform_matrix(1:3,1:3);

Robot.plot([0,1,2,3,4,5,6,7], 'workspace', [-10,10,-10,10,-10,10]);
Robot.teach();

end

