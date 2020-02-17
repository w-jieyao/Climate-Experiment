%%% plots of g(T) function

%%% 
clear all
close all
clc

T_space = linspace(200,350,100);
    c_1 = .15;
    c_2 = .7;
    c = 3.154e8;
    kappa_ZG = .5;
    T_0 = (1.9e-15)^(-1/6);
    T_c = 288.05;
    Q_0 = 342.5-.5;
    % Q_0 = 342.5+.5;
    sigma_ZG = 5.6697e-8;
    m = .4;
    mu = 1;
    alpha = c_1 + c_2 ./ 2 .* (1 - tanh(kappa_ZG .* (T_space - T_c)));
    g_T = (mu * Q_0 * (1 - alpha) - sigma_ZG .* (T_space.^4) .* (1 - m * tanh((T_space ./ T_0).^6)))
    
    plot(T_space,g_T)
    