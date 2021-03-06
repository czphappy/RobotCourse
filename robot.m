clear all;
L1 = Link([0 0 0 80 0],'mod') ;
L2 = Link([0 40 0 0 0],'mod') ;
L3 = Link([0 30 0 0 1],'mod') ;
L4 = Link([0 0 0 -40 0],'mod') ;
SCARA = SerialLink([L1,L2,L3,L4],'name','SCARA');
figure(1);
subplot(1,1,1);
plot(SCARA,[0 0 0 0]);
q1=[0,0,0,3.14/3];
q2=[0,0,0,3.14/6];
t=0:0.01:1;
[q,qq,qqq]=jtraj(q1,q2,t);
figure(2);
subplot(3,2,1);
plot(t,q(:,1));
% xlabel(Time(s));
% ylabel(joint1(rad));