function [] = D1Function( p,r,x0,y0)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here


x=x0;
y=y0;
resultx = [];
resulty = [];
hold on 
X = @(x,y) p-x^2 + r*y ; 
Y= @(x,y) x;

t=1:100;
for t0=t
    x1=X(x,y);
    y1=Y(x,y);
    resultx=[resultx;x1];
    resulty=[resulty;y1];
    x=x1;
    y=y1;
end

%plot(t,resultx,'r:*',t,resulty,'g-.v')
plot(t,resultx,'*',t,resulty,'.')

axis([0,100,-1000,1000])

    
hold off 



end

