function J = CostF(Entrees_X,Sortie_Y,theta)
%calculer la fct cost en sachant que cette derniere devrai diminuer a chaque iteration

lambda=0.01;%initialiser lambda
longueur = length(Sortie_Y); %calculer le nbr de training examples present dans le dataset
J = (1/(2*longueur))*(sum((Entrees_X*theta - Sortie_Y).^2)+lambda*sum(theta.^2));%appliquer la formule plus la regularisation