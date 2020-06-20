function output_newgraylevel = hyperbolization(A,mu,pi,alpha,m)
% lambda = 1;
% mu = membership(A);
% pi = hesitation(mu,lambda);

mu_upper = (mu+pi).^alpha;
mu_lower = (mu-pi).^alpha;
mu_enh = (mu_upper+mu_lower+((m-2)*(mu_upper.*mu_lower)))./(1-(1-m)*(mu_upper.*mu_lower));
output_newgraylevel = mu_enh.*(max(max(A))-min(min(A)))+ min(min(A));

end