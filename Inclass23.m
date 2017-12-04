%GB comments
1 100 
2 100
3 100 
4 100
overall 100


%In this directory, you will find a derivaitve function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate. 

sol = ode23(@repressilator,[0 200], [1, 0,0]);
hold on
plot(sol.x, sol.y(1,:));
plot(sol.x, sol.y(2,:));
plot(sol.x, sol.y(3,:));
hold off 
legend('x1','x2','x3')
% they indeed oscillate. 


% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?
sol = ode23(@repressilator,[0 200], [0.5, 0.5,0.5]);
hold on
plot(sol.x, sol.y(1,:));
plot(sol.x, sol.y(2,:));
plot(sol.x, sol.y(3,:));
hold off 
legend('x1','x2','x3')
% the pattern changes -> the oscillatory behavior is not seen 
% this is because the initial conidtions are the same. 

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 
sol = ode23(@repressilator,[0 200], [1, 0,0]);
hold on
plot(sol.x, sol.y(1,:));
plot(sol.x, sol.y(2,:));
plot(sol.x, sol.y(3,:));
hold off 
legend('x1','x2','x3')


%k2 = ~1 the system oscillate at first and the oscillation disappears; if
%you to k2 ~ 0.1 the system don't oscillate at all. 

% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 
% oscillation can still happen, but if k2 of one the genes goes below the
% value mention above in Q3, the system no longer oscillates. 
