% 文件路径和名称
files = {'training_results_K=0.01',...
    'training_results_K=0.1',...
    'training_results_K=1', ...
    'training_results_K=10',...
    'training_results_K=25',...
    'training_results_K=100'};
lambdas = {'\lambda=0.01', '\lambda=0.1', '\lambda=1', '\lambda=10', '\lambda=25', '\lambda=100'};

% 初始化变量
acc_data = [];
nmi_data = [];
epochs = []; % 假设所有文件的 epoch 一致

% 加载每个文件的数据
for i = 1:length(files)
    data = load(files{i});
    acc_data = [acc_data; data.acc_history];
    nmi_data = [nmi_data; data.nmi_history];
    epochs = data.epoch_history; % 假设所有文件的 epoch 一致
end

% 定义颜色
colors = {[0.93, 0.69, 0.13], ... % 蓝色
          [0.47, 0.67, 0.19], ... % 青色
          [0.30, 0.75, 0.93], ... % 橙色
          [0.16, 0.44, 0.74], ... % 绿色
          [0.85, 0.33, 0.10], ... % 红色
          [0.85, 0, 0.85]}; % 品红色

% 绘制 ACC 曲线
figure;
hold on;
for i = 1:size(acc_data, 1)
    plot(epochs, acc_data(i, :), 'LineWidth', 1.5, 'Color', colors{i}); % 使用 RGB 定义的颜色
end
hold off;
legend(lambdas, 'Location', 'southeast', 'Interpreter', 'tex','FontSize', 12);
title('Comparison of ACC Convergence Speed', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Epoch', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('ACC', 'FontSize', 12, 'FontWeight', 'bold');
xlim([0, 200]);
ylim([0.6, 1.0]); % 根据实际数据调整
grid on;
set(gca, 'FontSize', 10, 'LineWidth', 1);

zp1 = BaseZoom();
zp1.plot

% 绘制 NMI 曲线
figure;
hold on;
for i = 1:size(nmi_data, 1)
    plot(epochs, nmi_data(i, :), 'LineWidth', 1.5, 'Color', colors{i}); % 使用 RGB 定义的颜色
end
hold off;
legend(lambdas, 'Location', 'southeast', 'Interpreter', 'tex','FontSize', 12);
title('Comparison of NMI Convergence Speed', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Epoch', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('NMI', 'FontSize', 12, 'FontWeight', 'bold');
xlim([0, 200]);
ylim([0.5, 1.0]); % 根据实际数据调整
grid on;
set(gca, 'FontSize', 10, 'LineWidth', 1);
zp2 = BaseZoom();
zp2.plot

