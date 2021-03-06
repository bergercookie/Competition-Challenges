function area = triangle_sequence(n)
my_triplet = triangle(n);
area = my_triplet(3)^2;
  
end

function triplet = triangle(n)
if n == 1
    triplet = [3, 4, 5]
elseif n == 2
    triplet = [4, 5, sqrt(4^2 + 5^2)];
elseif n > 2
    prev = triangle(n-1);
    triplet = [prev(2), prev(3), sqrt(prev(2)^2 + prev(3)^2)];
else
    error('Please enter a positive number as input')
end
end
