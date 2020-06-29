clear;clc;close all;
%% ²âÊÔº¯Êý
freq = 0:0.02:42;
y1 = -freq.^2;
y2 = -sqrt(freq);
%% »æÍ¼
w_line = 2;
w_axes = 1;
f_sweep = 0:2:24;
left_color = [0 0 0];
right_color = [0 0 0];
figure('Position', [650, 500, 700, 400],'defaultAxesColorOrder',[left_color; right_color]);
yyaxis right
b1 = plot(freq, y1, 'r-');
set( gca, 'linewidth', w_axes);
set( b1, 'linewidth', w_line);
axis([min(f_sweep) max(f_sweep) -60 0]);
ylabel('Magnitude (dB)', 'rotation', 90);
ax = gca;
ax.YTick = -60:10:0;
yyaxis left
b2 = plot(freq, y2, 'b-');
hold on;
set( gca, 'linewidth', w_axes);
set( b2, 'linewidth', w_line);
axis([min(f_sweep) max(f_sweep) -6 6]);
xlabel('Frequency(GHz)');
ylabel('Axial ratio (dB)', 'rotation', 90);
hold off
legend('y1', 'y2', 'location', 'southwest');
grid on;
ax = gca;
ax.FontSize = 14;
ax.FontName = 'times new roman';
ax.XTick = f_sweep;
ax.YTick = -6:2:6;













