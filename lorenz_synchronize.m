clc;
clear;
M0=[1 2 3 4 5 6 0.1 0.2 0.3];
tspan=0:0.0001:20;

[t,m]=ode45('lorenz',tspan,M0);
figure(11)
plot(t,4*m(:,1),'--',t,m(:,4),'-.','LineWidth',2);
xlabel('t')
ylabel('2x_{1}(t),y_{1}(t)')
legend('2x_{1}(t)','y_{1}(t)')
hold on

figure(12)
plot(t,4*m(:,2),'--',t,m(:,5),'-.','LineWidth',2);
xlabel('t')
ylabel('2x_{2}(t),y_{2}(t)')
legend('2x_{2}(t)','y_{2}(t)')
hold on

figure(13)
plot(t,4*m(:,3),'--',t,m(:,6),'-.','LineWidth',2);
xlabel('t')
ylabel('2x_{3}(t),y_{3}(t)')
legend('2x_{3}(t)','y_{3}(t)')
hold on
