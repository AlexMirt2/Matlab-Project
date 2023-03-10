function curentul_prin_R(Vr,R)
x=0:2:Vr;
y=(x ./ R);

subplot('position',[0.70 0.3 0.27 0.28]);
plot(x, y);
grid("on");

title("Curentul prin R in functie de intrare");
xlabel("Tensiunea pe R [ohm]");
ylabel("Curentul prin R [ma]");

% uicontrol('Style', 'pushbutton',...
%     'Units','normalized',...
%     'Position',[0.45 0.2 0.45 0.3],...
%     'String', 'Reset', ...
%     'Callback', 'curentul_prin_R(Vr, R)');
end
