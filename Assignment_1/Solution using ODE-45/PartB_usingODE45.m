Tend=10;
tspan=[0 Tend];

%% Part-B solution
[tsol, ysol] = ode45(@functionB, tspan,[0;0;0;0]);
plot(tsol,ysol(:,1),'-o',tsol,ysol(:,2),'-o');