% Can be improved 
function y = RevCountSeq(x)
  coefs = x(1:2:end-1);
  nums  = x(2:2:end);
  num_el = length(coefs);
  %final = zeros(1, sum(coefs));% for speeding up the algorithm
  final = [];
  for i=1:num_el
      my_list = nums(i) * ones(1, coefs(i));
      final = [final, my_list];
  end
  y = final;
end