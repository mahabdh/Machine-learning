function [X_Normalise, m, s] = Normalisation(X)
X_Normalise = X;
m = zeros(1, size(X, 2));%initialiser un vecteur à 0 avec une colonne et taille de X lignes
s = zeros(1, size(X, 2));%initialiser un vecteur à 0 avec une colonne et taille de X lignes
for i=1:size(m,2)
    m(1,i) = mean(X(:,i));%calculer la moyenne des X 
    s(1,i) = std(X(:,i));%calcule de la deviation standard pour chaque X
    X_Normalise(:,i) = (X(:,i)-m(1,i))/s(1,i);%appliquer la formule brk
end