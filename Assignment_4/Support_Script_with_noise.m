mc=1.5;
mp=0.5;
g=9.82;
L=1;
d1=0.01;
d2=0.01;

A=[0 0 1 0;
    0 0 0 1;
    0 (g*mp)/mc -(d1)/mc -(d2)/(L*mc);
    0 g*(mc+mp)/(L*mc) -(d1)/(L*mc) -(d2*(mc+mp))/(L*L*mc*mp)];

B= [0; 0; 1/mc; 1/(L*mc)];
C=[1 0 0 0];
D=[0];

%% LQR Penalty functions

Q1 = [100000 0 0 0;
    0 1000000 0 0;
    0 0 100 0;
    0 0 0 1000];

R1 = .0001;

Kr= lqr(A,B,Q1,R1);

%% for Kalman Filter

Q = diag([0 0 0 0.005]);
R= [0.001];
N=[0;0;0;0]; %The noise cross-correlation N is set to zero when omitted.
I=eye(4);
[Kf,temp,temp1]=lqe(A,I,C,Q,R,N); 