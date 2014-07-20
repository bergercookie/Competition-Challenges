function [p1,p2] = goldbach(n)
prime_list = primes(n);

for i = 1:length(prime_list)
    p1_test = prime_list(i);
    for j = i:length(prime_list)
        p2_test = prime_list(j);
        if p1_test + p2_test == n
            p1 = p1_test;
            p2 = p2_test;
            return
        elseif p1_test + p2_test > n
            break
        end
    end
end
error('ERROR! Program not supposed to reach there')
end