clc;
clear all;
close all;

%% A matrix for undirected tree
a = [0 0 1 0 0 0;
1 0 0 0 0 1;
1 1 0 0 0 0;
0 1 0 0 0 0;
0 0 1 0 0 0;
0 0 0 1 1 0;];
%% Position of agents
x1 = [1 1];
x2 = [1 -1];
x3 = [-1 -1];
x4 = [-1 1];
x5 = [2 0];
x6 = [-2 0];

x = [x1;x2;x3;x4;x5;x6];
%% varying x2
x2_V = -5:0.1:5;

v1 = zeros(length(x2_V),length(x2_V));
%% Algorithm for graph laplacian potential
for m = 1:length(x2_V)
    for n = 1:length(x2_V)
    for j = 1:6
        v = a(2,j)*((x(j,:)-[x2_V(m) x2_V(n)])*(x(j,:)-[x2_V(m) x2_V(n)])');
       v1(m,n) = v1(m,n) + v;
    end
    end
    
end
%% Plotting graph laplacian potential
mesh(x2_V,x2_V,v1)

