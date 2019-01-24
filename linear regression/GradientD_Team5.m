function [theta, J_H] = gradientDescent(Entree_X, theta, Sortie_Y, alpha, numIters)
longueur = length(Sortie_Y); % number of training examples
J_H = zeros(numIters, 1);%initialiser un vecteur de J_H à 0
longueur_theta = length(theta);% calculer la longueur de theta
V_temporaire = theta;%valeur temporaire
lambda=0.01;%initilialiser lambda a 0.01

for iter=1:numIters
    temp = (Entree_X*theta - Sortie_Y);%la diff entre l'hypothse calculée h(X) et le Y present dans dataset  
    for i=1:longueur_theta
        V_temporaire(i,1) = sum(temp.*Entree_X(:,i));%valeur temporaire qui retourne la somme des temp * Xi
    end 
    theta = theta *(1-alpha*(lambda/longueur))- (alpha/longueur)*V_temporaire;%mise a jour de alpha plus regularisation
    J_H(iter,1) = CostF_Team5(Entree_X,Sortie_Y,theta);%calculer la fct cost avec les thetas mis a jour et sauvegarder dans ke vecteur J_H
 
end

