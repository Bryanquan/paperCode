clc;
clear;
h=4;
M0=[1 2 3 3 4 5 0.1 0.2 0.3];
tspan=0:0.0001:20;
[t,m]=ode45('lorenz',tspan,M0);

%the simulation of error system
figure(1)
plot(t,m(:,4)-h*m(:,1),'LineWidth',2);
xlabel('t')
ylabel('e_{1}(t)')
hold on;

figure(2)
plot(t,m(:,5)-h*m(:,2),'LineWidth',2);
xlabel('t')
ylabel('e_{2}(t)')
hold on;

figure(3)
plot(t,m(:,6)-h*m(:,3),'LineWidth',2);
xlabel('t')
ylabel('e_{3}(t)')
hold on;

%the simulation of parameter adaptive
figure(4)
plot(t,m(:,7),'LineWidth',2);
xlabel('t')
ylabel('a_{1}(t)')
hold on

figure(5)
plot(t,m(:,8),'LineWidth',2);
xlabel('t')
ylabel('b_{1}(t)')
hold on

figure(6)
plot(t,m(:,9),'LineWidth',2);
xlabel('t')
ylabel('c_{1}(t)')
hold on

 
