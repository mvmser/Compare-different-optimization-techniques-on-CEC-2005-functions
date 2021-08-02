%% Genetic Algorithm Optimization with 15 iterations for 2D and function 2
clc, clear, close all
rng default
global initial_flag
options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];

for i=1:15
 initial_flag = 0;
 % use the below for 2D 
 [ga_x, ga_val, ga_exit_flag, ga_output] = ga(@(x)benchmark_func(x,2), 2, options);
 
 nb_generation = extractfield(ga_output, "generations");
 all_val(i) = ga_val;
 all_it_val(i) = nb_generation;

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_2D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_2_2D.csv');

% save best, worst, mean, std
ga_val_max_1 = max(all_val);
ga_val_min_1 = min(all_val);
ga_val_mean_1 = mean(all_val);
ga_val_std_1 = std(all_val);
ga_val_max_it_1 = max(all_it_val);

final = [ga_val_min_1 ga_val_max_1 ga_val_mean_1 ga_val_std_1 ga_val_max_it_1];
writematrix(final, 'results_ga_2_2D_.csv');

%% Genetic Algorithm Optimization with 15 iterations for 10D and function 2
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];
for i=1:15
 initial_flag = 0;
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,2), 10, options);
 
 nb_generation = extractfield(ga_output, "generations");
 all_val(i) = ga_val;
 all_it_val(i) = nb_generation;
 
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_10D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_2_10D.csv');

% save best, worst, mean, std
ga_val_max_2 = max(all_val);
ga_val_min_2 = min(all_val);
ga_val_mean_2 = mean(all_val);
ga_val_std_2 = std(all_val);
ga_val_max_it_2 = max(all_it_val);

final = [ga_val_min_2 ga_val_max_2 ga_val_mean_2 ga_val_std_2 ga_val_max_it_2];
writematrix(final, 'results_ga_2_10D_.csv');



%% Genetic Algorithm Optimization with 15 iterations for 100D and function 2 
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];
for i=1:15
 initial_flag = 0;
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,2),100,options);

 nb_generation = extractfield(ga_output, "generations");
 all_val(i) = ga_val;
 all_it_val(i) = nb_generation;

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_2_100D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_2_100D.csv');

% save best, worst, mean, std
ga_val_max = max(all_val);
ga_val_min = min(all_val);
ga_val_mean = mean(all_val);
ga_val_std = std(all_val);
ga_val_max_it = max(all_it_val);

final = [ga_val_min ga_val_max ga_val_mean ga_val_std ga_val_max_it];
writematrix(final, 'results_ga_2_100D_.csv');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Genetic Algorithm Optimization with 15 iterations for 2D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];
for i=1:15
 initial_flag = 0;
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,7),2,options);

 nb_generation = extractfield(ga_output, "generations");

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_2D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_7_2D.csv');

%% Genetic Algorithm Optimization with 15 iterations for 10D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];
for i=1:15
 initial_flag = 0;
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,7),10,options);

 nb_generation = extractfield(ga_output, "generations");

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_10D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_7_10D.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Genetic Algorithm Optimization with 15 iterations for 100D and function 7 (Shifted Rotated Griewank’s Function without Bounds)
clc, clear, close all
rng default
global initial_flag;

options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
results = [];
for i=1:15
 initial_flag = 0;
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,7),50,options);

 nb_generation = extractfield(ga_output, "generations");
 all_val(i) = ga_val;

 % nb iteration, local / global minimal, nb of iteration, v1, v2
 m = [i ga_val nb_generation ga_x];
 results = [results ; m];
 
 % Save the figures
 fname = sprintf('figure_%d_7_50D_ga.fig', i) ;
 savefig(fname)
end

% save the results
writematrix(results, 'results_ga_7_50D.csv');

% save best, worst, mean, std
ga_val_max_ = max(all_val);
ga_val_min_ = min(all_val);
ga_val_mean_ = mean(all_val);
ga_val_std_ = std(all_val);

final = ["Best" ga_val_max_; "Worst" ga_val_min_ ;"Mean" ga_val_min_ ;"Std" ga_val_std_];
writematrix(results, 'results_ga_7_50D_.csv');
