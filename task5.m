n = input('');
m = input('');
rng(get_r());
arr = randi(10, n, m);

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