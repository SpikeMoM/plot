clear;clc;close all;
%% 测试函数
theta = (0:359)*pi/180;
y1 = -theta.^3;
y2 = -power(theta, 2);
%% 极坐标系
figure('Position', [300,200,450,400]);
b = polarplot(theta, y1,'r-', theta, y2,'b-');
set( b, 'linewidth', 2);
rlim([-60 20]);
legend('y1', 'y2', 'location', 'southeast');
ax = gca;
ax.FontSize = 14;
ax.FontName = 'times new roman';
ax.RTick = -60:20:20;
ax.ThetaTick = 0:30:360;