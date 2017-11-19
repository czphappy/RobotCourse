clear all;
% y=TriF(1,120,60,0,0);a=0;b=1;
% y=TriF(1,120,60,0,0,0,0);a=0;b=1;
yy=diff(y);
yyy=diff(yy);
yyyy=diff(yyy);
figure(1)
subplot(2,2,1)
tt=a:0.01:b;
m=subs(y,tt);
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角度θ');
 
subplot(2,2,2)
tt=a:0.01:b;
m=subs(yy,tt);
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角速度ω');

subplot(2,2,3)
tt=a:0.01:b;
m=subs(yyy,tt);
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度β');

subplot(2,2,4)
tt=a:0.01:b;
m=subs(yyyy,tt);
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度变化率');