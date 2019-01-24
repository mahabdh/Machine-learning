function [a2,a3] = fowardP (input , param1,param2)
    z1=input*param1;
    a2 = sig_team5(z1);
    z2=a2*param2;
    a3= sig_team5(z2);
end