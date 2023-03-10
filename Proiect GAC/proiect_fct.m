function proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning)

Iz=Ir- Io;
Vr=Vi- Vz;
Ir=(Vi- Vz)/R;
Io=Ir- Iz;
Vo=Io*RL;

fig1=figure('Name','Proiect', ...
           'Units','Normalized',...
           'Position',[0.12 0.09 0.8 0.8],...
           'NumberTitle','off', 'color','[.1 .3 .6]');
if Vi>Vz
subplot('Position',[0.67,0.7,0.29,0.27]);
img3= imread('circuit_DZ.png');
image(img3);
axis off;

T=uicontrol('Style','text', ...
    'fontsize',11,'Units','normalized', ...
    'foregroundcolor','black','backgroundcolor','[.1 .3 .6]',...
    'FontName','Arial',...
    'FontWeight','bold',...
    'Position',[0.75,0.65,0.15,0.03], ...
    'String','SCHEMA ELECTRICA', ...
    'Callback','close;');


%-------BACK---------------------------------------------------------------
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.86 0.07 0.09 0.04], ...     
         'String','BACK', ...
         'Callback','start_project;');
%-------GRUP BUTOANE---------------------------------------------------------------              
group=uibuttongroup('Visible','on',...
                     'BackgroundColor',[.1 .3 .6],...
                     'ForegroundColor','black',...
                     'Title','Valori introduse',...
                     'FontSize',12,...
                     'FontAngle','italic',...
                     'FontWeight','bold',...
                     'TitlePosition','centertop',...
                     'Tag','radiobutton',...
                     'Position',[0.05 0.25 0.23 0.68]);
groupC=uibuttongroup('Visible','on',...
                     'BackgroundColor',[.1 .3 .6],...
                     'ForegroundColor','black',...
                     'Title','Valori rezultate:',...
                     'FontSize',12,...
                     'FontAngle','italic',...
                     'FontWeight','bold',...
                     'TitlePosition','centertop',...
                     'Tag','radiobutton',...
                     'Parent',group,...
                     'Position',[0.15 0.02 0.7 0.53]);
         
%-------BUTOANE PT Vi----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized', ...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.84 0.3 0.1], ...
          'String','Vi (V):', ...
          'Parent',group);
uicontrol('Style','edit', ...
                'Units','normalized',...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.88 0.15 0.08], ...
                'String',Vi, ...
                'Parent',group,...
                'Callback','Vi=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');
         
%-------BUTOANE PT R----------------------------------------------------

uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.75 0.3 0.10], ...
          'String','R (Ω) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.78 0.15 0.08], ...
                'String',R, ...
                'Parent',group,...
                'Callback','R=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');


%-------BUTOANE PT RL----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.65 0.3 0.10], ...
          'String','RL (Ω) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.68 0.15 0.08], ...
                'String',RL, ...
                'Parent',group,...
                'Callback','RL=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');

%-------BUTOANE PT Vz----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.55 0.3 0.10], ...
          'String','Vz (V) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.58 0.15 0.08], ...
                'String',Vz, ...
                'Parent',group,...
                'Callback','Vz=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');
%-------BUTOANE PT Iz----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.8 0.3 0.10], ...
          'String','Iz (A) :', ...
          'Parent',groupC); 
uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.8 0.2 0.09], ...
                'String',Iz, ...
                'Parent',groupC);
%-------BUTOANE PT Ir------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.6 0.3 0.10], ...
          'String','Ir (A) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.6 0.2 0.09], ...
                'String',Ir, ...
                'Parent',groupC);
%-------BUTOANE PT Io------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.4 0.3 0.10], ...
          'String','Io (A) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.4 0.2 0.09], ...
                'String',Io, ...
                'Parent',groupC);
%-------BUTOANE PT Vr------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.25 0.3 0.10], ...
          'String','Vr (V) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.25 0.2 0.09], ...
                'String',Vr, ...
                'Parent',groupC);
%-------BUTOANE PT Vo------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.1 0.3 0.10], ...
          'String','Vo (V) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.1 0.2 0.09], ...
                'String',Vo, ...
                'Parent',groupC);


%-------BUTOANE RESET------------------------------------------------
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.11 0.18 0.10 0.04], ...     
         'String','RESET', ...
         'Callback','close; proiect');


curentul_prin_R(Vr,R);
f=50;
N=3;

tensiunea_de_iesire(Vo,f,N);

 tensiunea_de_intrare(Vi,f,N);







%-------BUTOANE warning------------------------------------------------
else
    curentul_prin_R(Vr,R);
    f=50;
N=3;

    tensiunea_de_iesire(Vo,f,N);

    tensiunea_de_intrare(Vi,f,N);
uicontrol('Style','text', ...
         'fontsize',12,'Units','normalized', ...
         'foregroundcolor','black','backgroundcolor','r',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.06,0.1,0.2,0.05], ...     
         'String','Dioda nu este polarizata', ...
         'Callback','close;');
subplot('Position',[0.67,0.7,0.29,0.27]);
img3= imread('circuit_DZ.png');
image(img3);
axis off;

T=uicontrol('Style','text', ...
         'fontsize',11,'Units','normalized', ...
         'foregroundcolor','black','backgroundcolor','[.1 .3 .6]',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.75,0.65,0.15,0.03], ...     
         'String','SCHEMA ELECTRICA', ...
         'Callback','close;');


%-------BACK---------------------------------------------------------------
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.86 0.07 0.09 0.04], ...     
         'String','BACK', ...
         'Callback','start_project;');
%-------GRUP BUTOANE---------------------------------------------------------------              
group=uibuttongroup('Visible','on',...
                     'BackgroundColor',[.1 .3 .6],...
                     'ForegroundColor','black',...
                     'Title','Valori introduse',...
                     'FontSize',12,...
                     'FontAngle','italic',...
                     'FontWeight','bold',...
                     'TitlePosition','centertop',...
                     'Tag','radiobutton',...
                     'Position',[0.05 0.25 0.23 0.68]);
groupC=uibuttongroup('Visible','on',...
                     'BackgroundColor',[.1 .3 .6],...
                     'ForegroundColor','black',...
                     'Title','Valori rezultate:',...
                     'FontSize',12,...
                     'FontAngle','italic',...
                     'FontWeight','bold',...
                     'TitlePosition','centertop',...
                     'Tag','radiobutton',...
                     'Parent',group,...
                     'Position',[0.15 0.02 0.7 0.53]);
         
%-------BUTOANE PT Vi----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized', ...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.84 0.3 0.1], ...
          'String','Vi (V):', ...
          'Parent',group);
uicontrol('Style','edit', ...
                'Units','normalized',...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.88 0.15 0.08], ...
                'String',Vi, ...
                'Parent',group,...
                'Callback','Vi=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');
         
%-------BUTOANE PT R----------------------------------------------------

uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.75 0.3 0.10], ...
          'String','R (Ω) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.78 0.15 0.08], ...
                'String',R, ...
                'Parent',group,...
                'Callback','R=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');


%-------BUTOANE PT RL----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.65 0.3 0.10], ...
          'String','RL (Ω) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.68 0.15 0.08], ...
                'String',RL, ...
                'Parent',group,...
                'Callback','RL=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');

%-------BUTOANE PT Vz----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...
          'FontAngle','italic',...
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.55 0.3 0.10], ...
          'String','Vz (V) :', ...
          'Parent',group);
 uicontrol('Style','edit', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.5 0.58 0.15 0.08], ...
                'String',Vz, ...
                'Parent',group,...
                'Callback','Vz=str2num(get(gco,''String'')),close;proiect_fct(R,RL,Vi,Vz,Vo,Ir,Iz,Io,warning);');
%-------BUTOANE PT Iz----------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.8 0.3 0.10], ...
          'String','Iz (A) :', ...
          'Parent',groupC); 
Iz=0;
uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.8 0.2 0.09], ...
                'String',Iz, ...
                'Parent',groupC);
%-------BUTOANE PT Ir------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.6 0.3 0.10], ...
          'String','Ir (A) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.6 0.2 0.09], ...
                'String',Ir, ...
                'Parent',groupC);
%-------BUTOANE PT Io------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.4 0.3 0.10], ...
          'String','Io (A) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.4 0.2 0.09], ...
                'String',Io, ...
                'Parent',groupC);
%-------BUTOANE PT Vr------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.2 0.3 0.10], ...
          'String','Vr (V) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.2 0.2 0.09], ...
                'String',Vr, ...
                'Parent',groupC);
%-------BUTOANE RESET------------------------------------------------
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.11 0.18 0.10 0.04], ...     
         'String','RESET', ...
         'Callback','close; proiect');
%-------BUTOANE PT Vo------------------------------------------------
uicontrol('Style','text', ...
          'Units','normalized',...
          'BackgroundColor',[.1 .3 .6],...
          'fontsize',10,...     
          'FontWeight','bold',...
          'HorizontalAlignment','left',...
          'Position',[0.22 0.1 0.3 0.10], ...
          'String','Vo (V) :', ...
          'Parent',groupC); 

uicontrol('Style','text', ...
                'Units','normalized', ...
                'FontSize',10,...
                'FontWeight','bold',...
                'foregroundcolor','white','backgroundcolor','k',...
                'Position',[0.67 0.1 0.2 0.09], ...
                'String',Vo, ...
                'Parent',groupC);


end

