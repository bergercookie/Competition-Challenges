function [tf] = isprime(n)
prime_list = primes(n) %primes 'till n
tf = ismember(n, prime_list);
end