function output_v=non_membershipdegree(mu,lambda)
% clc;
%lambda=1;
%mu=membership(A);
output_v=(1-mu)./(1+lambda*mu);

end