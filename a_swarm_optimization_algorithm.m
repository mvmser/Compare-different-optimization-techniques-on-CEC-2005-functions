%% Swarm Optimization Algorithm with 15 iterations for 2D and function 2
clc, clear, close all
rng default
global initial_flag

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];

for i=1:15
 initial_flag = 0;
 % use the below for 2D function 5
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] =  particleswarm(@(x)benchmark_func(x,2),2,[-100,-100],[100,100],options);

 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;
 all_it_val(i) = nb_generation;
    
 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_2D_pso.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_pso_2_2D.csv');

% save best, worst, mean, std
swarm_val_max_1 = max(all_val);
swarm_val_min_1 = min(all_val);
swarm_val_mean_1 = mean(all_val);
swarm_val_std_1 = std(all_val);
swarm_val_max_it_1 = max(all_it_val);

final = [swarm_val_min_1 swarm_val_max_1 swarm_val_mean_1 swarm_val_std_1 swarm_val_max_it_1];
writematrix(final, 'results_pso_2_2D_.csv');

%% Swarm Optimization Algorithm with 15 iterations for 10D and function 2 
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];
for i=1:15
 initial_flag = 0;
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,5),10,[-100,-100],[100,100],options);
 
 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;
 all_it_val(i) = nb_generation;
    
 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_10D_pso.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_pso_5_10D.csv');

% save best, worst, mean, std
swarm_val_max_2 = max(all_val);
swarm_val_min_2 = min(all_val);
swarm_val_mean_2 = mean(all_val);
swarm_val_std_2 = std(all_val);
swarm_val_max_it_2 = max(all_it_val);

final = [swarm_val_min_2 swarm_val_max_2 swarm_val_mean_2 swarm_val_std_2 swarm_val_max_it_2];
writematrix(final, 'results_pso_2_10D_.csv');


%% Swarm Optimization Algorithm with 15 iterations for 100D and function 2
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];
for i=1:15
 initial_flag = 0;
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,2),100,[-100,-100],[100,100],options);
 
 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;
 all_it_val(i) = nb_generation;
 
 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_100D_pso.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_pso_2_100D.csv');

% save best, worst, mean, std
swarm_val_max = max(all_val);
swarm_val_min = min(all_val);
swarm_val_mean = mean(all_val);
swarm_val_std = std(all_val);
swarm_val_max_it = max(all_it_val);

final = [swarm_val_min swarm_val_max swarm_val_mean swarm_val_std swarm_val_max_it];
writematrix(final, 'results_pso_2_100D_.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Swarm Optimization Algorithm with 15 iterations for 2D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];
for i=1:15
 initial_flag = 0;
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,7),2,[-100,-100],[100,100],options);

 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_2D_pso.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_pso_7_2D.csv');

% save best, worst, mean, std
swarm_val_max = max(all_val);
swarm_val_min = min(all_val);
swarm_val_mean = mean(all_val);
swarm_val_std = std(all_val);

final = ["Best" swarm_val_max; "Worst" swarm_val_min ;"Mean" swarm_val_mean ;"Std" swarm_val_std];
writematrix(results, 'results_pso_7_2D_.csv');

%% Swarm Optimization Algorithm with 15 iterations for 10D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];
for i=1:15
 initial_flag = 0;
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,7),10,[-100,-100],[100,100],options);

 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_10D_pso.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_pso_7_10D.csv');

% save best, worst, mean, std
swarm_val_max = max(all_val);
swarm_val_min = min(all_val);
swarm_val_mean = mean(all_val);
swarm_val_std = std(all_val);

final = ["Best" swarm_val_max; "Worst" swarm_val_min ;"Mean" swarm_val_mean ;"Std" swarm_val_std];
writematrix(results, 'results_pso_7_10D_.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% Swarm Optimization Algorithm with 15 iterations for 100D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
results = [];
for i=1:15
 initial_flag = 0;
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,7),50,[-100,-100],[100,100],options);
 nb_generation = extractfield(swarm_output, "iterations");
 all_val(i) = swarm_val;
 all_it_val(i) = nb_generation;
 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i swarm_val nb_generation swarm_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_100D_pso.fig', i) ;
 savefig(fname)
end
% save the results
writematrix(results, 'results_pso_7_100D.csv');
% save best, worst, mean, std
swarm_val_max_ = max(all_val);
swarm_val_min_ = min(all_val);
swarm_val_mean_ = mean(all_val);
swarm_val_std_ = std(all_val);

final = ["Best" swarm_val_max_; "Worst" swarm_val_min_ ;"Mean" swarm_val_mean_ ;"Std" swarm_val_std_];
writematrix(results, 'results_pso_7_100D_.csv');
