n = input('');
% get_r() - function to create R
rng(get_r());
arr = randi(10, n, 1);

% print_info - function to display author info
print_info();
fprintf('%d\n', n);
fprintf('%d ', arr)
res = 0;
% Variant 1 : definition of couple in array - two adjacent elements
for i=(1:n-1)
    if (arr(i) + arr(i+1) > 0 && mod(arr(i)+arr(i+1),2)~=0)
        res = res + 1;
     end;
end;
fprintf('\n[Var1] : %d\n', res);
% Variant 2 : couple - two any elemnts of an array with different index
for i=(1:n-1)
    for j=(i+1:n-1)
        if (arr(i) + arr(j) > 0 && mod(arr(i)+arr(j),2)~=0)
            res = res + 1;
        end;
     end;
end;
fprintf('[Var2] : %d\n', res);