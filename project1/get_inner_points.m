function [ x_d, y_d, z_d ] = get_inner_points( x, y, z )

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

end

