function N = mandelbrot(C,lim)
my_N = zeros(size(C));

for i = 1:length(C(:, 1))
    for j =1:length(C)
        my_N(i,j) = mand_elem(C(i,j), lim);
    end
end
N = my_N;
end