function [ ] = ws_display( angle_step, exten_step )

x = [];
y = [];
z = [];

Robot = get_robot();
for l1 = 0 : exten_step : 2
    for theta2 = 0 : angle_step : 2*pi
        for theta3 = 0 : angle_step : 2*pi
             for l4 = 0 : exten_step : 2
                for theta5 = 0 : angle_step : 2*pi
                     for theta6 = 0 : angle_step : 2*pi
                         for l7 = 0 : exten_step : 2
                             for theta8 = 0 : angle_step : 2*pi
                                Robot.offset = [l1, 0, 0, l4, 0, 0, l7, 0];
                                t = Robot.fkine([0, theta2, theta3, 0, theta5, theta6, 0, theta8]); 
                                pos = t(:,4);
                                x(end + 1) = pos(1);
                                y(end + 1) = pos(2);
                                z(end + 1) = pos(3);
                             end
                         end
                     end
                 end
             end
        end
    end
end

x_d = [];
y_d = [];
z_d = [];

for i = 1 : length(x)
    
   x0 = x(i);
   y0 = y(i);
   z0 = z(i);
   
   flag = zeros(26);
   
   for j = 1 : length(x)
       if (x(j) < x0 && y(j) < y0 && z(j) < z0) 
           flag(1) = 1;
       end
       if (x(j) == x0 && y(j) < y0 && z(j) < z0) 
           flag(2) = 1;
       end
       if (x(j) > x0 && y(j) < y0 && z(j) < z0) 
           flag(3) = 1;
       end
       if (x(j) < x0 && y(j) < y0 && z(j) == z0) 
           flag(4) = 1;
       end
       if (x(j) == x0 && y(j) < y0 && z(j) == z0) 
           flag(5) = 1;
       end
       if (x(j) > x0 && y(j) < y0 && z(j) == z0) 
           flag(6) = 1;
       end
       if (x(j) < x0 && y(j) < y0 && z(j) > z0) 
           flag(7) = 1;
       end
       if (x(j) == x0 && y(j) < y0 && z(j) > z0) 
           flag(8) = 1;
       end
       if (x(j) > x0 && y(j) < y0 && z(j) > z0) 
           flag(9) = 1;
       end
       if (x(j) < x0 && y(j) == y0 && z(j) < z0) 
           flag(10) = 1;
       end
       if (x(j) == x0 && y(j) == y0 && z(j) < z0) 
           flag(11) = 1;
       end
       if (x(j) > x0 && y(j) == y0 && z(j) < z0) 
           flag(12) = 1;
       end
       if (x(j) < x0 && y(j) == y0 && z(j) == z0) 
           flag(13) = 1;
       end
       if (x(j) > x0 && y(j) == y0 && z(j) == z0) 
           flag(14) = 1;
       end
       if (x(j) < x0 && y(j) == y0 && z(j) > z0) 
           flag(15) = 1;
       end
       if (x(j) == x0 && y(j) == y0 && z(j) > z0) 
           flag(16) = 1;
       end
       if (x(j) > x0 && y(j) == y0 && z(j) > z0) 
           flag(17) = 1;
       end
       if (x(j) < x0 && y(j) > y0 && z(j) < z0) 
           flag(18) = 1;
       end
       if (x(j) == x0 && y(j) > y0 && z(j) < z0) 
           flag(19) = 1;
       end
       if (x(j) > x0 && y(j) > y0 && z(j) < z0) 
           flag(20) = 1;
       end
       if (x(j) < x0 && y(j) > y0 && z(j) == z0) 
           flag(21) = 1;
       end
       if (x(j) == x0 && y(j) > y0 && z(j) == z0) 
           flag(22) = 1;
       end
       if (x(j) > x0 && y(j) > y0 && z(j) == z0) 
           flag(23) = 1;
       end
       if (x(j) < x0 && y(j) > y0 && z(j) > z0) 
           flag(24) = 1;
       end
       if (x(j) == x0 && y(j) > y0 && z(j) > z0) 
           flag(25) = 1;
       end
       if (x(j) > x0 && y(j) > y0 && z(j) > z0) 
           flag(26) = 1;
       end
   end
   
   if(all(flag(:, 1) ~= 0))
      x_d(end + 1) = x0; 
      y_d(end + 1) = y0;
      z_d(end + 1) = z0;
   end
   
end

disp(length(x_d));


scatter3(x, y, z);
Robot.plot([0, 0, 0, 0, 0, 0, 0, 0], 'workspace', [-15, 15, -15, 15, -15, 15]);

scatter3(x_d, y_d, z_d);
Robot.plot([0, 0, 0, 0, 0, 0, 0, 0], 'workspace', [-15, 15, -15, 15, -15, 15]);

end

