%Copyright 2019 The MathWorks, Inc.
%% animateRotorPosition
%
% This script will run a Simulink model of a BLDC that is energized in
% one coil and animate the movement of the rotor. Once the animation figure
% is rendered, there is a 5 second pause before the animation begins.

close all
clear


% Below parameters are defined in the Simulink model
% Sample time
% Ts = 1e-5;
% Number of pole pairs
% p = 1; 
% Initial rotor angle in degrees
% th0 = 0;
% Sector 
% sector = 6;


mdl = 'Modeling_three_phase_inverter';

open_system(mdl);

sim(mdl)

try
%
r = 1.2;
theta = linspace(0,2*pi);
x = cos(theta);
y = sin(theta);

x1 = 0.8*cos(theta);
y1 = 0.8*sin(theta);

xa = cos(0);
ya = sin(0);

xb = cos(2*pi/3);
yb = sin(2*pi/3);

xc = cos(-2*pi/3);
yc = sin(-2*pi/3);

xat = r*cos(0);
yat = r*sin(0);

xbt = r*cos(2*pi/3);
ybt = r*sin(2*pi/3);

xct = r*cos(-2*pi/3);
yct = r*sin(-2*pi/3);

hf = figure(1);h = plot(x,y,'k-',[0 xa],[0 ya],'k-',[0 xb],[0 yb],'k-',[0 xc],[0  yc],'k-',xa,ya,'ko',xb,yb,'ko',xc,yc,'ko',x1,y1,'k-');grid

set(hf,'Color',[1 1 1])

ha = gca;

set(ha,'Visible','off')

ht1 = text(xat,yat,'A');
ht2 = text(xbt,ybt,'B');
ht3 = text(xct,yct,'C');

set(ht1,'FontSize',14);
set(ht2,'FontSize',14);
set(ht3,'FontSize',14);


axis([-1.2 1.2 -1.2 1.2])
axis equal

set(h(5),'MarkerSize',20)
set(h(6),'MarkerSize',20)
set(h(7),'MarkerSize',20)

switch_pattern = logsout{2}.Values.Data(1:20:end,:);

init_switch_pattern = num2str(switch_pattern(1,:));


switch init_switch_pattern
    
    case num2str([1 0 0 0 0 1])
                
        set(h(5),'MarkerFaceColor',[1 0 0])
        set(h(7),'MarkerFaceColor',[0 0 1])
        
    case num2str([0 0 1 0 0 1])
        
        set(h(6),'MarkerFaceColor',[1 0 0])
        set(h(7),'MarkerFaceColor',[0 0 1])
                
    case num2str([0 1 1 0 0 0])
        
        set(h(5),'MarkerFaceColor',[0 0 1])
        set(h(6),'MarkerFaceColor',[1 0 0])
        
    case num2str([0 1 0 0 1 0])
        
        set(h(5),'MarkerFaceColor',[0 0 1])
        set(h(7),'MarkerFaceColor',[1 0 0])
        
    case num2str([0 0 0 1 1 0])
        
        set(h(6),'MarkerFaceColor',[0 0 1])
        set(h(7),'MarkerFaceColor',[1 0 0])
    
    case num2str([1 0 0 1 0 0])
        
        set(h(5),'MarkerFaceColor',[1 0 0])
        set(h(6),'MarkerFaceColor',[0 0 1])

end


l1 = 0.7;
ro = logsout{1}.Values.Data(1)*pi/180;

xr1 = l1*cos(ro);
yr1 = l1*sin(ro);
xr2 = -l1*cos(ro);
yr2 = -l1*sin(ro);

hold on,hl1 = plot([xr1 xr2],[yr1 yr2],'m-');

set(hl1,'LineWidth',3)

hpr = plot(xr2,yr2,'ko');
hpb = plot(xr1,yr1,'ko');


set(hpr,'MarkerSize',20)
set(hpb,'MarkerSize',20)
set(hpr,'MarkerFaceColor',[1 0 0])
set(hpb,'MarkerFaceColor',[0 0 1])
        

pause

ro1 = logsout{1}.Values.Data(1:40:end);

for l = 1:numel(ro1)
    
switch_pattern1 = num2str(switch_pattern);

ro = ro1(l)*pi/180;


xr1 = l1*cos(ro);
yr1 = l1*sin(ro);
xr2 = -l1*cos(ro);
yr2 = -l1*sin(ro);

set(hpr,'XData',xr2);
set(hpr,'YData',yr2);
set(hpb,'XData',xr1);
set(hpb,'YData',yr1);

set(hl1,'XData',[xr1 xr2]);
set(hl1,'YData',[yr1 yr2]);


switch switch_pattern1
    
    case num2str([1 0 0 0 0 1])
                
        set(h(5),'MarkerFaceColor',[1 0 0])
        set(h(7),'MarkerFaceColor',[0 0 1])
        
    case num2str([0 0 1 0 0 1])
        
        set(h(6),'MarkerFaceColor',[1 0 0])
        set(h(7),'MarkerFaceColor',[0 0 1])
                
    case num2str([0 1 1 0 0 0])
        
        set(h(5),'MarkerFaceColor',[0 0 1])
        set(h(6),'MarkerFaceColor',[1 0 0])
        
    case num2str([0 1 0 0 1 0])
        
        set(h(5),'MarkerFaceColor',[0 0 1])
        set(h(7),'MarkerFaceColor',[1 0 0])
        
    case num2str([0 0 0 1 1 0])
        
        set(h(6),'MarkerFaceColor',[0 0 1])
        set(h(7),'MarkerFaceColor',[1 0 0])
    
    case num2str([1 0 0 1 0 0])
        
        set(h(5),'MarkerFaceColor',[1 0 0])
        set(h(6),'MarkerFaceColor',[0 0 1])

end



drawnow

end

catch

               disp("The animation was closed before the end of the simulated data")

end
