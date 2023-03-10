clear all;
close all;
clc

fig1=figure('Name','Stabilizator de tens cu DZ', ...
           'Units','Normalized',...
           'Position',[0.12 0.09 0.8 0.8],...
           'NumberTitle','off');

w=imread('fundal6.png');
image(w);
set(gca,'Position',[0 0 1 1]);

T=uicontrol('Style','pushbutton', ...
         'fontsize',30,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.24 0.9 0.5 0.06], ...     
         'String','STABILIZATOR DE TENSIUNE CU DZ', ...
         'Callback','close;');
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.03 0.13 0.15 0.04], ...     
         'String','Student:Mîrț Alexandru', ...
         'Callback','close;');
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.03 0.07 0.09 0.04], ...     
         'String','Grupa: 2126', ...
         'Callback','close;');
uicontrol('Style','pushbutton', ...
         'fontsize',13,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.86 0.07 0.09 0.04], ...     
         'String','CLOSE', ...
         'Callback','close;');
uicontrol('Style','pushbutton', ...
         'fontsize',20,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.43 0.7 0.13 0.06], ...     
         'String','PROIECT', ...
         'Callback','close;proiect');
uicontrol('Style','pushbutton', ...
         'fontsize',20,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.43 0.6 0.13 0.06], ...     
         'String','Prezentare', ...
         'Callback','open(''Prezentare_GAC.pptx'')');
uicontrol('Style','pushbutton', ...
         'fontsize',20,'Units','normalized', ...
         'foregroundcolor','white','backgroundcolor','k',...
         'FontName','Arial',...
         'FontWeight','bold',...
         'Position',[0.42 0.5 0.17 0.06], ...     
         'String','Documentatie', ...
         'Callback','open(''Documentatie.docx'')');
m = uimenu('Label','Proiect');
uimenu(m,'Label','Documentație','callback','open(''Documentatie.docx'')');
uimenu(m,'Label','Prezentare','callback','open(''Prezentare_GAC.pptx'')');
uimenu(m,'Label','Close','CallBack','close',...
         'Separator','on');


