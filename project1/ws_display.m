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

[x_d, y_d, z_d] = get_inner_points(x, y, z);

figure(1);
scatter3(x, y, z);
Robot.plot([0, 0, 0, 0, 0, 0, 0, 0], 'workspace', [-15, 15, -15, 15, -15, 15]);

figure(2);
scatter3(x_d, y_d, z_d);
Robot.plot([0, 0, 0, 0, 0, 0, 0, 0], 'workspace', [-15, 15, -15, 15, -15, 15]);

end

