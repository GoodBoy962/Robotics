n = input('');
rng(get_r());
arr = randi(10, n, 1);
fprintf('11401\n')
fprintf('Alexander\n')
fprintf('Pliskin\n')
fprintf('%d\n', n);
fprintf('%d ', arr)
res = 0;
for i=(1:n-1)
    if (arr(i) + arr(i+1) > 0 && mod(arr(i)+arr(i+1),2)~=0)
        res = res + 1;
     end;
end;
fprintf('\n%d\n', res);