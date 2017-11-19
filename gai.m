ttt=[1 0 0 0 0 0 0 0;
    1 1 1 1 0 0 0 0;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 1 1 1;
    0 1 0 0 0 0 0 0;
    0 0 0 0 0 1 2 3;
    0 1 2 3 0 -1 0 0;
    0 0 2 6 0 0 -2 0];
y=[60;120;120;30;0;0;0;0];
syms t;
A=[]*t;
for i=0:3
     A(1,i+1)=t.^i;         
end
B=ttt\y;
B1=B(1:4,:);
B2=B(5:8,:);
y=A*B1;
x=A*B2;
yy=diff(y);xx=diff(x);
yyy=diff(yy);xxx=diff(xx);
yyyy=diff(yyy);xxxx=diff(xxx);

subplot(2,2,1)
tt=0:0.01:1;
m1=subs(y,tt);
tt=1.01:0.01:2;
m2=subs(x,tt-1);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角度θ');

subplot(2,2,2)
tt=0:0.01:1;
m1=subs(yy,tt);
tt=1.01:0.01:2;
m2=subs(xx,tt-1);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角速度ω');

subplot(2,2,3)
tt=0:0.01:1;
m1=subs(yyy,tt);
tt=1.01:0.01:2;
m2=subs(xxx,tt-1);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度β');

subplot(2,2,4)
tt=0:0.01:1;
m1=subs(yyyy,tt);
tt=1.01:0.01:2;
m2=subs(xxxx,tt-1);
tt=0:0.01:2;
m=[m1,m2];
plot(tt,m,'LineWidth',2);
xlabel('时间t');
ylabel('角加速度变化率');

