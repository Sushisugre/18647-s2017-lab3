init();

path = '/Users/s4keng/courses/connected_embedded/lab3/2d/0,2_0,1_2,2_Sound2,1.5(1).csv';
% path = '/Users/s4keng/courses/connected_embedded/lab3/2d/0,2_0,1_1,1_0.5,1_Sound0,1.5(3).csv';
f = readFile(path);

plotTraces(f);

getCorrelationTimeLag(f{1},f{2});
