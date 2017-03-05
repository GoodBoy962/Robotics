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
arr(arr > avg) = 100;
disp(arr)
