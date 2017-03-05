n = input('');
m = input('');
rng(get_r());
arr = randi(10, n, m);
fprintf('11401\n')
fprintf('Alexander\n')
fprintf('Pliskin\n')
fprintf('%d, %d\n', n, m);
disp(arr);
sum = 0;
for i = (1:n)
    for j = (1:m)
        sum=sum + arr(i, j);
    end
end
avg = sum/(n*m);
for i = (1:n)
    for j = (1:m)
        if (arr(i, j) < avg)
           arr(i, j) = 100;
        end
    end
end
disp(arr)