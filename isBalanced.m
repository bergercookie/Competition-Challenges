function tf = isBalanced(n)
my_str=num2str(n);
len_str = length(my_str);

first_half = my_str(1:fix(length(my_str) / 2));
if rem(len_str, 2)
    second_half = my_str(length(first_half) + 2: end);
else 
    second_half = my_str(length(first_half) + 1: end);
end
sum_1 = sum_digits(first_half);
sum_2 = sum_digits(second_half);

tf = (sum_1==sum_2);
end

