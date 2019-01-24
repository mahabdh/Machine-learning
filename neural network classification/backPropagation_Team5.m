function [param21,param22] = backProbagation(input, couche1,param1,param2,Sorties_Y,a3)
    D2=couche1'*(2*(Sorties_Y(1,:)-a3).*sigmoidDerv_Team5(a3))  ;
    D1=input'*(((2*(Sorties_Y(1,:)-a3).*sigmoidDerv_Team5(a3))*param2').*sigmoidDerv_Team5(couche1));
 
    param22=param2+D2;
    param21=param1+D1;
end
