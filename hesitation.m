function output_pi = hesitation(mu,lambda)
% lambda = 1;
% mu = membership(A);
output_pi = 1-mu-(1-mu)./(1+lambda*mu);

end