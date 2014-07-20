function b = back_and_forth(n)
  b = reshape(1:n^2, [n, n])';
  for i=2:2:length(b(:, 1))
      b(i, :) = sort(b(i, :), 'descend');
  end
end