Donnees =load('data.txt');

Entrees_X=Donnees(:,1:4);
Sorties_Y=Donnees(:,5);

Arbre= fitctree(Entrees_X,Sorties_Y);
view(Arbre,'mode','graph');