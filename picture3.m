clear all;
y=BiF(1,60,120,0,0);
x=BiF(2,120,30,0,0);
yy=diff(y);xx=diff(x);
yyy=diff(yy);xxx=diff(xx);
yyyy=diff(yyy);xxxx=diff(xxx);
figure(1)

subplot(2,2,1)
tt=0:0.01:1;
m1=subs(y,tt);
tt=1.01:0.01:2;
m2=subs(x,tt);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角度θ');

subplot(2,2,2)
tt=0:0.01:1;
m1=subs(yy,tt);
tt=1.01:0.01:2;
m2=subs(xx,tt);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角速度ω');

subplot(2,2,3)
tt=0:0.01:1;
m1=subs(yyy,tt);
tt=1.01:0.01:2;
m2=subs(xxx,tt);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度β');

subplot(2,2,4)
tt=0:0.01:1;
m1=subs(yyyy,tt);
tt=1.01:0.01:2;
m2=subs(xxxx,tt);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度变化率');