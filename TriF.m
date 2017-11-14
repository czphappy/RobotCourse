function y=TriF(varargin)
    syms t; 
    B=[];
    A=[]*t;
    %%
if nargin == 5
    tt=varargin{1}; 
    for j=1:2
        for i=0:3
            if j==1
            A(1,i+1)=0;
            else
                A(2,i+1)=t.^i;
            end
        end
    end
    A(1,1)=1;
    for i=2:3
        for j=0:3
            if rem(i,2)==0
           A(i+1,j+1)=0;
            else 
           A(i+1,j+1)=diff(A(i-1,j+1));
            end
        end
    end
 A(3,2)=A(4,2);   
for i=1:4
    B(i,1)=varargin{i+1};
end
m=A(2,:);
n=subs(A\B,tt);
y=m*n;

%%
elseif nargin == 7
    tt=varargin{1}; 
    for j=1:2
        for i=0:5
            if j==5
            A(1,i+1)=0;
            else
                A(2,i+1)=t.^i;
            end
        end
    end
    A(1,1)=1;
    for i=2:5
        for j=0:5
            if rem(i,2)==0
           A(i+1,j+1)=0;
            else 
           A(i+1,j+1)=diff(A(i-1,j+1));
             end
        end
    end
     A(3,2)=A(4,2);  
      A(5,3)=A(6,3);  
for i=1:6
    B(i,1)=varargin{i+1};
end
m=A(2,:);
n=subs(A\B,tt);
y=m*n;
end
end

