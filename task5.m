n = input('');
m = input('');
% get_r() - function to create R
rng(get_r());
arr = randi(10, n, m);

% print_info - function to display author info
print_info();
fprintf('%d, %d\n', n, m);

disp(arr);

avg = mean(mean(arr));

for i = (1:n)
    for j = (1:m)
        if (arr(i, j) < avg)
           arr(i, j) = 100;
        end
    end
end
disp(arr)