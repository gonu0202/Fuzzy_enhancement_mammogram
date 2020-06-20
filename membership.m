function output = membership(A)
% clc;
a_min=min(min(A));
a_max=max(max(A));
output=(A-a_min)./(a_max-a_min);

end