Donnees =load('data.txt');

Entrees_X=Donnees (:,1:4); %vecteur contenant nos featurs avec leur valeur 
Sorties_Y=Donnees (:,5); %vecteur contenant nos output Y 

hiddenl=5; %le nombre de noeuds dans couche cachée 
couche1=zeros(1,hiddenl); %vecteur initialiser à zero 
param1= rand(size(Entrees_X,2),hiddenl);%initialiser vecteur des parametres de la premiere couche aleatoirement et qui sera de taille 4*5 vu qu'on a 4 features et 5 couches cachées 
param2= rand(hiddenl,size(Sorties_Y,2));
cout_erreur=[];
for iteration =1:100 
  p =[];
  for j=1:size(Entrees_X,1)  
  [a2,a3]= fowardP_team5(Entrees_X(j,:),param1,param2);
  [param1,param2]=backPropagation_Team5(Entrees_X(j,:), couche1,param1,param2,Sorties_Y,a3);
  p= [p; (sum(Sorties_Y-a3)^2)];
  end
cout_erreur=[cout_erreur;sum(p)];
end
cout_erreur=cout_erreur/(size(Entrees_X,1)*2);

