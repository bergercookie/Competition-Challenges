function y = pascalTri(n)
if n >= 3
    my_vec = zeros(1, n+1);
    for i = 1:n+1
        my_vec(i) = nchoosek(n, i - 1);
    y = my_vec;
    end
elseif n == 2;
    y = [1, 2, 1];
elseif n == 1;
    y = [1, 1];
elseif n == 0;
    y = 1;
else
    error('Invalid input')
end
end