function tensiunea_de_intrare(Vi,f,N);
T=1/f; % definim perioada semnalului
t=0:T/100:N*T;
x1=Vi*sin(2*pi*f*t);


subplot('position',[0.35 0.63 0.25 0.28]);%setam o fereastra de plotare
plot(t,x1);
grid on;
title('Intrarea');
xlabel('timp [s]');
ylabel('Tensiunea de intrare [V]');

end
