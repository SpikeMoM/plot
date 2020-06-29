clear;clc;close all;
%% ²âÊÔº¯Êý
freq = 0:0.02:42;
y1 = -freq.^2;
y2 = -sqrt(freq);
%% »æÍ¼
f_sweep = 0:2:24;
y_sweep = -60:10:0;
figure('Position', [100, 100, 600, 400]);
b1 = plot(freq, y1, 'r-', freq, y2, 'b-');
set( gca, 'linewidth', 1);
set( b1, 'linewidth', 2);
axis([min(f_sweep) max(f_sweep) min(y_sweep) max(y_sweep)]);
xlabel('Frequency(GHz)');
ylabel('S (dB)');
legend('y1', 'y2', 'location', 'northwest');
grid on;
ax = gca;
ax.FontSize = 16;
ax.FontName = 'times new roman';
ax.XTick = f_sweep;
ax.YTick = y_sweep;