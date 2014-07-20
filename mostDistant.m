function ix = mostDistant(p)

len_rows = length(p);
dist = zeros(len_rows, len_rows);

my_max = 0;
i_wanted = 0;
j_wanted = 0;

for row=1:len_rows
    for elem=row+1:len_rows
        dist(row, elem) = sqrt((p(row, 1) - p(elem,1)) ^ 2 + (p(row, 2) - p(elem, 2)) ^ 2);
    end
end
[my_max, pos] = max(dist(:));
ix = [rem(pos, length(dist)),fix(pos/length(dist)) + 1];
end