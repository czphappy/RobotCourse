clear all;
figure (1)
y=TriF(1,120,60,0,0);
yy=diff(y);
yyy=diff(yy);
yyyy=diff(yyy);
% y=TriF(1,120,60,0,0,0,0);
% yy=diff(y);
% yyy=diff(yy);
% yyyy=diff(yyy);
subplot(2,2,1)
tt=0:0.01:1;
m=subs(y,tt);
plot(tt,m,'LineWidth',2);
 
subplot(2,2,2)
tt=0:0.01:1;
m=subs(yy,tt);
plot(tt,m,'LineWidth',2);

subplot(2,2,3)
tt=0:0.01:1;
m=subs(yyy,tt);
plot(tt,m,'LineWidth',2);

subplot(2,2,4)
tt=0:0.01:1;
m=subs(yyyy,tt);
plot(tt,m,'LineWidth',2);