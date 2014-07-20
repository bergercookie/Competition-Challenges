function n = mand_elem(c, lim)
z = zeros(1, lim);

z(1) = c; 
i = 1;

while i < lim && abs(z(i) ^ 2 + c) <= 2
    i = i+1;
    z(i) = z(i-1)^2 + c;
end

if i ~= lim % out due to the magnitude!
    z = z(1:i); 
end
n = length(z);
end