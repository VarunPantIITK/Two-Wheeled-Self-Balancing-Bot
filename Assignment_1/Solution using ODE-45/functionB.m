function dydx = functionB(t,y)
f1= heaviside(t);
m1=10;
m2=100;
c1=100;
c2=1000;
k1=exp(4);
k2=exp(5);
dydx=[y(2); (5*f1-c1*y(2)-k1*y(1)+c1*y(4)+k1*y(3))/(m1); y(4); (k1*y(1)+c1*y(2)-(k1+k2)*y(3)-(c1+c2)*y(4))/(m2)];