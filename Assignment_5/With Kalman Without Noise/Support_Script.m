mc=0.972  ;
mp=0.522;
g=9.82;
L=0.158;
d1=0.001;
d2=0.001;

A=[0 0 1 0;
    0 0 0 1;
    0 (g*mp)/mc -(d1)/mc -(d2)/(L*mc);
    0 g*(mc+mp)/(L*mc) -(d1)/(L*mc) -(d2*(mc+mp))/(L*L*mc*mp)];

B= [0; 0; 1/mc; 1/(L*mc)];
C=[1 0 0 0];
D=[0];

%% LQR Penalty functions

n1=100000000;
n2=10000;
Q1 = [n1 0 0 0;
    0 n2 0 0;
    0 0 1 0;
    0 0 0 1];

R1 = 10000;

Kr= lqr(A,B,Q1,R1);

%% for Kalman Filter

Q = diag([0 0 0 0.005]);
R= [0.01];
N=[0;0;0;0]; %The noise cross-correlation N is set to zero when omitted.
I=eye(4);
[Kf,temp,temp1]=lqe(A,I,C,Q,R,N); 