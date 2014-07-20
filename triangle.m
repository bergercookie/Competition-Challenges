function t = triangle(n)
if n > 3
    t = triangle(n - 1) + n;
elseif n == 3
    t = 1 + 2 + 3;
else % 1, 2
    t = n;
end
end