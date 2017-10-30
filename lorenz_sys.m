%code for phase diagram
clc;
clear;
M0=[1 2 3 4 5 6 0.1 0.2 0.3];
tspan=0:0.0001:80;

[t,m]=ode45('lorenz',tspan,M0);
figure(7)
plot(m(:,1),m(:,2),'LineWidth',2);
xlabel('X')
ylabel('Y')
hold 

figure(8)
plot(m(:,1),m(:,3),'LineWidth',2);
xlabel('X')
ylabel('Z')
hold on


figure(9)
plot(m(:,2),m(:,3),'LineWidth',2);
xlabel('Y')
ylabel('Z')
hold on


figure(10)
plot3(m(:,1),m(:,2),m(:,3),'LineWidth',2);
xlabel('X')
ylabel('Y')
zlabel('Z')
hold on
 


