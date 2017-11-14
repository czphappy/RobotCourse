clear all;
syms x1 x2 x3 x4 L L1 L2;
A1 = [cos(x1) -sin(x1) 0 0;sin(x1) cos(x1) 0 0;0 0 1 0;0 0 0 1];
A2 = [cos(x2) -sin(x2) 0 0;sin(x2) cos(x2) 0 L1;0 0 1 0;0 0 0 1];
A3 = [cos(x3) -sin(x3) 0 0;sin(x3) cos(x3) 0 L2;0 0 1 0;0 0 0 1];
A4 = [1 0 0 0;0 1 0 0;0 0 1 L+x4;0 0 0 1];
t=[cos(x1+x2+x3) -sin(x1+x2+x3) 0 -L1.*sin(x1)-L2.*sin(x1+x2);...
    sin(x1+x2+x3) cos(x1+x2+x3) 0 L1.*cos(x1)+L2.*cos(x1+x2);...
    0 0 1 L+x4;0 0 0 1];
syms n1 n2 n3 o1 o2 o3 a1 a2 a3 p1 p2 p3;
TT=[n1 o1 a1 p1;n2 o2 a2 p2;n3 o3 a3 p3;0 0 0 1];
T0=[1 0 0 0;0 1 0 L1+L2;0 0 1 L;0 0 0 1];
J=[0 L1.*cos(x1) L1.*cos(x1)+L2.*cos(x1+x2) 0;...
    0 L1.*sin(x1) L1.*sin(x1)+L2.*sin(x1+x2) 0;...
    0 0 0 1;0 0 0 0;0 0 0 0;1 1 1 0];