function b = makingChange(a)
 available = [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.010];
 b = zeros(1, length(available));
 
 for index=1:length(available)
     b(index) = fix((a+10e-10)/available(index)); %Great debug mode
     a = rem(a, available(index));
 end
 
end