function si =sig(a)
for i=1:size(a,2)
   si(1,i)=1/(1+exp(-a(1,i)));
end
end