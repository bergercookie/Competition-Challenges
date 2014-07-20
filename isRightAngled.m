function flag = isRightAngled(a,b,c)
  flag = false;
  combs = [a ^ 2 + b ^ 2 == c ^ 2, ...
           b ^ 2 + c ^ 2 == a ^ 2, ...
           c ^ 2 + a ^ 2 == b ^ 2];
  if any(combs)
      flag = true;
  end
end