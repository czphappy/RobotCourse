clear all;
Q0=120;QF=60;
[Q,QD,QDD] = jtraj(Q0, QF, 1001, 0, 0);
subplot(2,2,1)
tt=0:0.001:1;
plot(tt,Q,'LineWidth',2);
subplot(2,2,2)
tt=0:0.001:1;
plot(tt,QD,'LineWidth',2);
subplot(2,2,3)
tt=0:0.001:1;
plot(tt,QDD,'LineWidth',2);