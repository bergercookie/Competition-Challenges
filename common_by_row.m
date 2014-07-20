function y = common_by_row(x)
[rows, cols] = size(x);
if rows == 0 || cols == 0
    y = [];
    return
end
match = unique(x(1, :));
for i=2:length(x(:, 1))
    match = intersect(match, x(i, :));
end
if isempty(match)
    y = [];
else
    y = match;
end
end