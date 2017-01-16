syms v(t)
C=.125*10^(-6);
R=3200;
L=8;
[V] = odeToVectorField(-C*diff(v,2)==1/R*diff(v)+1/L*v);
M = matlabFunction(V,'vars', {'t','Y'});
sol = ode45(M,[0 20],[2 0]);
fplot(@(x)deval(sol,x,1), [0, 3*(L*C)^.5]);