function prime_list = primes(n)

my_list = 2:n;
p = 2;
p2 = 2;

while p2 < my_list(end)
    not_primes = [];
    index = find(my_list==p2);
    for i=index+1:length(my_list)
        if rem(my_list(i), p2) == 0
            not_primes = [not_primes, my_list(i)];
        end
    end
    my_list = setdiff(my_list, not_primes);
    p2 = my_list(find(my_list == p2) + 1);
end
prime_list = my_list;
end
