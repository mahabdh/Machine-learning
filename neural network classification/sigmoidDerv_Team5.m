function [segDerv] = sigmoidDerv(x)
  
    for i=1:size(x,1)
        a=exp(-x(1,i));
        b=((1+exp(-x(1,i)))^2);
    segDerv(1,i)=a/b;
    end
  
 end