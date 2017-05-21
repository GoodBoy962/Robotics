function [ ] = ws_display( )

ANGLE_STEP = pi/2;
EXTEN_STEP = 1;

x = [];
y = [];
z = [];

Robot = get_robot();
for l1 = 0 : EXTEN_STEP : 2
    for theta2 = 0 : ANGLE_STEP : 2*pi
        for theta3 = 0 : ANGLE_STEP : 2*pi
            for l4 = 0 : EXTEN_STEP : 2
                for theta5 = 0 : ANGLE_STEP : 2*pi
                    for theta6 = 0 : ANGLE_STEP : 2*pi
                        for l7 = 0 : EXTEN_STEP : 2
                            for theta8 = 0 : ANGLE_STEP : 2*pi
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

Robot.plot([0, 0, 0, 0, 0, 0, 0, 0], 'workspace', [-15, 15, -15, 15, -15, 15]);
scatter3(x, y, z);

end

