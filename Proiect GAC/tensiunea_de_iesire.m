function tensiunea_de_iesire(Vo,f,N)
T=1/f; % definim perioada semnalului
t=0:T/100:N*T;
x1=Vo*sin(2*pi*f*t);


subplot('position',[0.35 0.23 0.25 0.28]);%setam o fereastra de plotare
plot(t,x1);
grid on;
title('Iesirea');
xlabel('timp [s]');
ylabel('Tensiunea de iesire [V]');

end

