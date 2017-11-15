function y=BiF(varargin)
syms t;
A=[]*t;
for i=0:3
     A(1,i+1)=t.^i;         
end
if nargin == 5
m=varargin{1};
if m==1
for i=1:4
    B(1,i)=subs(A(1,i),0);
end
for i=1:4
    B(2,i)=subs(A(1,i),1);
end
for i=1:4
    B(3,i)=subs(diff(A(1,i)),0);
end
for i=1:4
    B(4,i)=subs(diff(diff(A(1,i))),0);
end
end
if m==2
for i=1:4
    B(1,i)=subs(A(1,i),1);
end
for i=1:4
    B(2,i)=subs(A(1,i),2);
end
for i=1:4
    B(3,i)=subs(diff(A(1,i)),2);
end
for i=1:4
    B(4,i)=subs(diff(diff(A(1,i))),2);
end
end
C=[];
for i=1:4
    C(i,1)=varargin{i+1};
end
n=B\C;
y=A*n;
end

end