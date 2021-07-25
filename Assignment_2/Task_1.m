%% defining parameters for state space model

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

% consider <x>=[q1 q2 q1' q2']
% q1=distance from origin
% q2=angle of pendulum rod from top
C=[0 1 0 0];
c_x=[1 0 0 0]; %assuming x to be the measured state

D=[0];

%% Task 1

% 1.
sys = ss(A,B,C,D);

%2.
    % In continuous-time, all the poles of the transfer function have negative real parts. When the poles are visualized on the complex s-plane, then they must all lie in the left-half plane (LHP) to ensure stability.
    P = pole(sys);
    
    % for stable system, Real part of all eigen values must be less than 0
    e = eig(A);
    % 0
   % -3.6327
   % 3.6043 --positive, unstable system
   % -0.0050
    [V,D] = eig(A);
    
    % Z = zero(sys) returns the zeros of the single-input, single-output (SISO) dynamic system model, sys. The output is expressed as the reciprocal of the time units specified in sys.TimeUnit. 
    % [Z,gain] = zero(sys) also returns the zero-pole-gain of sys.
    [Z,gain] = zero(sys);
    
    % In continuous-time, all the poles on the complex s-plane must be in the left-half plane (blue region) to ensure stability. The system is marginally stable if distinct poles lie on the imaginary axis, that is, the real parts of the poles are zero.
    % System poles are marked by x, and zeros are marked by o.
    pzmap(sys);

%3
    % sys = tf(ltiSys) converts the dynamic system model ltiSys to a transfer function model.
    sys2 = tf(sys);
    
    % using ss2tf
     % b — Transfer function numerator coefficients
    % a — Transfer function denominator coefficients
    % [b,a] = ss2tf(A,B,C,D);
    
    % sys = zpk(ltiSys) converts the dynamic system model ltiSys to a zero-pole-gain model.
    sys_zpk= zpk(sys);
    
%% My way

%stability
% for stable system, Real part of all eigen values must be less than 0,
% already done above

%controllability, if rnk==4 then controlable else not.
rnk = rank(ctrb(A,B));

%observability if bos==4 then observable
bos=rank(obsv(A,C));

%% Conclusions

% System is unstable by itself for pendulum straight up(fixed point), controllable but not observable for C=[0 0 1 0]. 

