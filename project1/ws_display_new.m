function [] = ws_display_new ()
    ANGLE_STEP=0.1;
    EXTEN_STEP=0.1;
    points=[];
    Robot = get_robot();
    where([0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0]);
    for l1=0:EXTEN_STEP:2
        for l2=0:ANGLE_STEP:2*pi
            for l3=0:ANGLE_STEP:2*pi
                for l4=0:EXTEN_STEP:2
                    for l5=0:ANGLE_STEP:2*pi
                        for l6=0:ANGLE_STEP:2*pi
                            for l7=0:EXTEN_STEP:2
                                for l8=0:ANGLE_STEP:2*pi
                                    matrix_before=where_no_disp([l1,l2,l3,l4,l5,l6,l7,l8-ANGLE_STEP],[l1,0,0,l4,0,0,l7,0]);
                                    matrix=where_no_disp([l1,l2,l3,l4,l5,l6,l7,l8],[l1,0,0,l4,0,0,l7,0]);
                                    %points=[points,matrix(1:3,4)];
                                    res=Robot.jtraj(matrix_before,matrix,2,'ikine',@Robot.ikine);
                                    mv=jtraj(res(1,:),res(2,:),2);
                                    hold on;
                                    Robot.plot(mv,'workspace', [-10,10,-10,10,-10,10]);
                                    pause(2);
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end